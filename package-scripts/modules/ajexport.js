// With thanks to elenterius on discord for troubleshooting
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/* global Project, loadModelFile, AnimatedJava */

const {
  existsSync,
  mkdirSync,
  readdirSync,
  readFileSync,
  writeFileSync,
} = require('fs');
const { resolve } = require('path');

const MODEL_FILE_EXTENSION = '.ajmodel';
const DEV_MODEL_FLAG = '_dev';

export async function script() {
  if (typeof AnimatedJava === 'undefined') {
    throw new Error('Failed to load Animated Java plugin before CLI plugin');
  }
  const paths = parseEnv();
  const ajmodelDir = 'resourcepack/assets/omega-flowey/models';
  console.log('Target paths: ', paths);
  const files = (await getFiles(ajmodelDir))
    .filter((file) => file.endsWith(MODEL_FILE_EXTENSION))
    .filter(
      (file) => !file.endsWith(`${DEV_MODEL_FLAG}${MODEL_FILE_EXTENSION}`),
    ); // ignore ajmodels with `_dev` in name e.g. `housefly_dev.ajmodel`

  const lastExportedPath = `${ajmodelDir}/last_exported_hashes.json`;
  const lastExported = existsSync(lastExportedPath)
    ? JSON.parse(readFileSync(lastExportedPath, 'utf8'))
    : {};

  // Ensure we have a `data` folder inside the `animated_java` datapack, else
  // the exporter will error
  const datapackDir = `${paths.datapack.replace('pack.mcmeta', '')}/data`;
  if (!existsSync(datapackDir)) {
    mkdirSync(datapackDir);
  }

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

  // Update `last_exported_hashes.json`
  writeFileSync(lastExportedPath, JSON.stringify(lastExported, undefined, 2));
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

/**
 * Generates a hash of an input
 * https://stackoverflow.com/a/57385857/13789724
 */
async function hash(m) {
  const msgUint8 = new TextEncoder().encode(m);
  const hashBuffer = await crypto.subtle.digest('SHA-256', msgUint8);
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  const hashHex = hashArray
    .map((b) => b.toString(16).padStart(2, '0'))
    .join('');
  return hashHex;
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
