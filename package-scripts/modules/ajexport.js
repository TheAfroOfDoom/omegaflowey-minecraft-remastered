// With thanks to elenterius on discord for troubleshooting
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/* global Project, loadModelFile, AnimatedJava, Blockbench, PathModule */

const { resolve } = PathModule;

/**
 * Generates a hash of an input
 * https://stackoverflow.com/a/57385857/13789724
 */
const hash = async (m) => {
  const msgUint8 = new TextEncoder().encode(m);
  const hashBuffer = await crypto.subtle.digest('SHA-256', msgUint8);
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  const hashHex = hashArray
    .map((b) => b.toString(16).padStart(2, '0'))
    .join('');
  return hashHex;
};

const requireWithCwd = async (cwd = '') => {
  const { parseLastExportedHashes, updateLastExportedHashes } = await import(
    resolve(`${cwd}/package-scripts/modules/utils-esm.js`)
  );
  const {
    ajblueprintDir,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
  } = await import(resolve(`${cwd}/package-scripts/modules/shared-consts.js`));

  return {
    ajblueprintDir: `${cwd}/${ajblueprintDir}`,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  };
};

const getArg = (argName) => {
  const { argv } = Blockbench;
  const arg = argv.find((arg) => arg.startsWith(argName));
  // every arg has surrounding quotes, so remove them
  const withQuotes = arg?.replace(argName, '')?.replaceAll('\\', '/');
  return withQuotes?.slice(1, -1);
};

const MODEL_FILE_EXTENSION = '.ajblueprint';
const DEV_MODEL_FLAG = '_dev';

export async function script(fs) {
  const { existsSync, mkdirSync, readFileSync } = fs;

  if (typeof AnimatedJava === 'undefined') {
    throw new Error('Failed to load Animated Java plugin before CLI plugin');
  }
  const cwd = getArg('--cwd=');
  const {
    ajblueprintDir,
    ajblueprintPathsDontOpenSuffix,
    ajExporterPassthroughFlagEnd,
    ajExporterPassthroughFlagStart,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  } = await requireWithCwd(cwd);

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

  const lastExported = parseLastExportedHashes(fs, ajblueprintDir);

  // We catch `console.error` since `safeExportProject` doesn't actually throw an error itself
  console.error = (data) => {
    log(data);
    throw new Error(data);
  };

  const getAllModelFiles = async () =>
    (await getFiles(fs, ajblueprintDir))
      .filter((file) => file.endsWith(MODEL_FILE_EXTENSION))
      .filter(
        (file) => !file.endsWith(`${DEV_MODEL_FLAG}${MODEL_FILE_EXTENSION}`),
      ); // ignore ajblueprints with `_dev` in name e.g. `housefly_dev.ajblueprint`

  const modelPathsArg = getArg('--ajexport-models=');
  const files =
    typeof modelPathsArg === 'undefined'
      ? await getAllModelFiles()
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
    await AnimatedJava.exportProject({
      forceSave: false,
      debugMode: true,
    });
    const modelName = model.blueprint_settings.blueprint_id;
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

  updateLastExportedHashes(fs, ajblueprintDir, lastExported);

  log('Finished exporting ajblueprints');
}

/**
 * Recursively walks a directory path and returns a list of files.
 * Slighty modified version of https://stackoverflow.com/a/45130990/13789724
 */
async function getFiles(fs, dir) {
  const dirents = fs.readdirSync(dir, { withFileTypes: true });
  const files = await Promise.all(
    dirents.map((dirent) => {
      const res = resolve(dir, dirent.name);
      return dirent.isDirectory() ? getFiles(fs, res) : res;
    }),
  );
  return Array.prototype.concat(...files);
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
    if (
      texture.path.includes('.minecraft') ||
      texture.path.includes('Application Support/minecraft')
    ) {
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
