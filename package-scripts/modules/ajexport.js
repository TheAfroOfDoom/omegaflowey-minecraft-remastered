// With thanks to elenterius on discord for troubleshooting
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/* global Project, loadModelFile, AnimatedJava, electron */

const { existsSync, mkdirSync, readFileSync } = require('fs');
const { resolve } = require('path');

const requireWithCwd = (cwd = '') => {
  const {
    getAllModelFiles,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  } = require(resolve(`${cwd}/package-scripts/utils`));
  const {
    ajblueprintDir,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
  } = require(resolve(`${cwd}/package-scripts/shared-consts`));

  return {
    ajblueprintDir: `${cwd}/${ajblueprintDir}`,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
    getAllModelFiles,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  };
};

const getArg = (argName) => {
  const { argv } = electron.getGlobal('process');
  const arg = argv.find((arg) => arg.startsWith(argName));
  return arg?.replace(argName, '')?.replaceAll('\\', '/');
};

export async function script() {
  if (typeof AnimatedJava === 'undefined') {
    throw new Error('Failed to load Animated Java plugin before CLI plugin');
  }
  const cwd = getArg('--cwd=');
  const {
    ajblueprintDir,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
    getAllModelFiles,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  } = requireWithCwd(cwd);

  const log = (...args) => {
    console.log(
      ajExporterPassthroughFlagStart,
      ...args,
      ajExporterPassthroughFlagEnd,
    );
  };

  const paths = parseEnv();

  // Ensure we have a `data` folder inside the `animated_java` datapack, else
  // the exporter will error
  const datapackDir = `${paths.datapack}/data`;
  if (!existsSync(datapackDir)) {
    mkdirSync(datapackDir);
  }

  const lastExported = parseLastExportedHashes(ajblueprintDir);

  // We catch `console.error` since `safeExportProject` doesn't actually throw an error itself
  console.error = (data) => {
    log(data);
    throw new Error(data);
  };

  const modelPathsArg = getArg('--ajexport-models=');
  const files =
    typeof modelPathsArg === 'undefined'
      ? await getAllModelFiles(ajblueprintDir)
      : modelPathsArg.replaceAll(ajblueprintPathsDontOpenSuffix, '').split(',');

  for (const file of files) {
    const content = readFileSync(file, 'utf-8');
    const name = file.split('/').pop();

    // Only export project if hash of model file is different than that found
    // in `last_exported_hashes.json`
    const model = JSON.parse(content);
    const { uuid } = model.meta;
    const currentHash = await hash(content);
    if (lastExported[uuid]?.hash === currentHash) {
      continue;
    }

    const injectedModel = injectModelPackPaths(content, paths);
    const fileObj = {
      path: file,
      content: injectedModel,
      name,
    };
    loadModelFile(fileObj);
    // `false` => don't save the blueprint to disk after exporting
    await AnimatedJava.API.exportProject(false);
    const modelName = model.blueprint_settings.export_namespace;
    lastExported[uuid] = {
      name: modelName,
      hash: currentHash,
      date: new Date().toISOString(),
      path: file.replaceAll('\\', '/'),
    };
    // `true` => forcibly close the project tab since there will be unsaved changes
    Project.close(true);
    log(`exported ${modelName}`);
  }

  updateLastExportedHashes(ajblueprintDir, lastExported);
}

function injectModelPackPaths(modelContent, paths) {
  const model = JSON.parse(modelContent);
  model.meta.save_location = `${paths.resourcepack}${
    model.meta.save_location.split('resourcepack')[1]
  }`;
  model.blueprint_settings.resource_pack = paths.resourcepack;
  model.blueprint_settings.data_pack = paths.datapack;
  for (const texture of model.textures) {
    texture.path = texture.path.replaceAll('\\', '/');
    if (texture.path.includes('.minecraft')) {
      const relativePath = texture.path.split('assets')[1];
      const newPath = `${paths.assetsDir}/assets${relativePath}`;
      texture.path = newPath;
    } else if (texture.path.includes('resourcepack/assets')) {
      const relativePath = texture.path.split('resourcepack/assets')[1];
      const resourcepackBase = paths.resourcepack.split('resourcepack')[0];
      const newPath = `${resourcepackBase}resourcepack/assets${relativePath}`;
      texture.path = newPath;
    }
  }
  return JSON.stringify(model);
}

function parseEnv() {
  const assetsDir = getArg('--assets-dir=');
  const datapack = getArg('--datapack=');
  const resourcePack = getArg('--resourcepack=');

  const errorIfOutdatedEnv = (val, name) => {
    if (val.endsWith('pack.mcmeta')) {
      const err = `Your ${name} in \`.env\` is outdated -- remove \`pack.mcmeta\` from the path`;
      throw new Error(err);
    }
  };
  errorIfOutdatedEnv(datapack, 'datapack path');
  errorIfOutdatedEnv(resourcePack, 'resourcepack path');

  return {
    assetsDir,
    datapack,
    resourcepack: resourcePack,
  };
}
