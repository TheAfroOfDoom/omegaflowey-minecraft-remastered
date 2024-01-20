// With thanks to elenterius on discord for troubleshooting
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/* global Project, loadModelFile, AnimatedJava, electron */

const { existsSync, mkdirSync, readdirSync, readFileSync } = require('fs');
const { resolve } = require('path');

const requireWithCwd = (cwd = '') => {
  const { hash, parseLastExportedHashes, updateLastExportedHashes } = require(
    resolve(`${cwd}/package-scripts/utils`),
  );
  const { ajmodelDir, ajmodelPathsDontOpenSuffix } = require(
    resolve(`${cwd}/package-scripts/shared-consts`),
  );

  return {
    ajmodelDir: `${cwd}/${ajmodelDir}`,
    ajmodelPathsDontOpenSuffix,
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

const MODEL_FILE_EXTENSION = '.ajmodel';
const DEV_MODEL_FLAG = '_dev';

export async function script() {
  if (typeof AnimatedJava === 'undefined') {
    throw new Error('Failed to load Animated Java plugin before CLI plugin');
  }
  const cwd = getArg('--cwd=');
  const {
    ajmodelDir,
    ajmodelPathsDontOpenSuffix,
    hash,
    parseLastExportedHashes,
    updateLastExportedHashes,
  } = requireWithCwd(cwd);
  const paths = parseEnv();

  // Ensure we have a `data` folder inside the `animated_java` datapack, else
  // the exporter will error
  const datapackDir = `${paths.datapack.replace('pack.mcmeta', '')}/data`;
  if (!existsSync(datapackDir)) {
    mkdirSync(datapackDir);
  }

  const lastExported = parseLastExportedHashes(ajmodelDir);

  const getAllModelFiles = async () =>
    (await getFiles(ajmodelDir))
      .filter((file) => file.endsWith(MODEL_FILE_EXTENSION))
      .filter(
        (file) => !file.endsWith(`${DEV_MODEL_FLAG}${MODEL_FILE_EXTENSION}`),
      ); // ignore ajmodels with `_dev` in name e.g. `housefly_dev.ajmodel`

  const modelPathsArg = getArg('--ajexport-models=');
  const files =
    typeof modelPathsArg === 'undefined'
      ? await getAllModelFiles()
      : modelPathsArg.replaceAll(ajmodelPathsDontOpenSuffix, '').split(',');

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
    await AnimatedJava.API.safeExportProject();
    lastExported[uuid] = {
      name: model.animated_java.settings.project_namespace,
      hash: currentHash,
      date: new Date().toISOString(),
      path: file.replaceAll('\\', '/'),
    };
    Project.close();
  }

  updateLastExportedHashes(ajmodelDir, lastExported);
}

/**
 * Recursively walks a directory path and returns a list of files.
 * Slighty modified version of https://stackoverflow.com/a/45130990/13789724
 */
async function getFiles(dir) {
  const dirents = readdirSync(dir, { withFileTypes: true });
  const files = await Promise.all(
    dirents.map((dirent) => {
      const res = resolve(dir, dirent.name);
      return dirent.isDirectory() ? getFiles(res) : res;
    }),
  );
  return Array.prototype.concat(...files);
}

function injectModelPackPaths(modelContent, paths) {
  const model = JSON.parse(modelContent);
  model.animated_java.settings.resource_pack_mcmeta = paths.resourcepack;
  model.animated_java.exporter_settings[
    'animated_java:datapack_exporter'
  ].datapack_mcmeta = paths.datapack;
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

function assertEnvironmentVariables(names) {
  for (const envVariableName of names) {
    const envVariable = process.env[envVariableName];
    if (typeof envVariable === 'undefined') {
      let error = `Failed to find environment variable '${envVariableName}'.`;
      error +=
        '\nMake sure you specify it in your `.env` (did you forget to copy-paste and rename `.env.EXAMPLE`?)';
      throw new Error(error);
    }
  }
}

function parseEnv() {
  assertEnvironmentVariables([
    'ASSETS_DIR',
    'DATAPACK_MCMETA',
    'RESOURCEPACK_MCMETA',
  ]);
  const {
    ASSETS_DIR: assetsDir,
    DATAPACK_MCMETA: datapack,
    RESOURCEPACK_MCMETA: resourcepack,
  } = process.env;
  return { assetsDir, datapack, resourcepack };
}
