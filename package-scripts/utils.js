const crypto = require('crypto');
const { existsSync, readdirSync, readFileSync, writeFileSync } = require('fs');
const { resolve } = require('path');

const assertEnvironmentVariables = (names) => {
  for (const envVariableName of names) {
    const envVariable = process.env[envVariableName];
    if (typeof envVariable === 'undefined') {
      let error = `Failed to find environment variable '${envVariableName}'.`;
      error +=
        '\nMake sure you specify it in your `.env` (did you forget to copy-paste and rename `.env.EXAMPLE`?)';
      throw new Error(error);
    }
  }
};

/**
 * Generates a hash of an input
 * https://stackoverflow.com/a/57385857/13789724
 */
const hash = async (m) => {
  m = 'test';
  // console.log(crypto.subtle.digest);
  console.log(process.version);
  console.log('B');
  const msgUint8 = new TextEncoder().encode(m);
  console.log('BB');
  // const x = Array.from(
  //   new Uint8Array(await crypto.subtle.digest('SHA-256', msgUint8)),
  // );
  // console.log(x);
  // const x = crypto.subtle.digest('SHA-256', msgUint8);
  // console.log({ x });
  // x.then((res) => {
  //   console.log(res);
  // })
  //   .catch((err) => console.error(err))
  //   .finally(() => console.log('hiiii'));

  const hashBuffer = await crypto.subtle.digest('SHA-256', msgUint8);
  // console.log('BBB');
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  // console.log('BBBB');
  const hashHex = hashArray
    .map((b) => b.toString(16).padStart(2, '0'))
    .join('');
  console.log('BBBBB', hashHex);
  return hashHex;
  // console.log('hi');
  // return 'hi';
};

const parseLastExportedHashes = (ajblueprintDir) => {
  const lastExportedPath = `${ajblueprintDir}/last_exported_hashes.json`;
  const lastExported = existsSync(lastExportedPath)
    ? JSON.parse(readFileSync(lastExportedPath, 'utf8'))
    : {};
  return lastExported;
};

const updateLastExportedHashes = (ajblueprintDir, lastExported) => {
  const lastExportedPath = `${ajblueprintDir}/last_exported_hashes.json`;
  writeFileSync(lastExportedPath, JSON.stringify(lastExported, undefined, 2));
};

const MODEL_FILE_EXTENSION = '.ajblueprint';
const DEV_MODEL_FLAG = '_dev';

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

const getAllModelFiles = async (ajblueprintDir) =>
  (await getFiles(ajblueprintDir))
    .filter((file) => file.endsWith(MODEL_FILE_EXTENSION))
    .filter(
      (file) => !file.endsWith(`${DEV_MODEL_FLAG}${MODEL_FILE_EXTENSION}`),
    ); // ignore ajblueprints with `_dev` in name e.g. `housefly_dev.ajblueprint`

/**
 * Returns whether or not a model's hash differs from the one
 * found in `last_exported_hashes.json`
 */
const didModelHashChange = async (modelStr, lastExported) => {
  // Only export project if hash of model file is different than that found
  // in `last_exported_hashes.json`
  console.log('A');
  const model = JSON.parse(modelStr);
  console.log('AA');
  const { uuid } = model.meta;
  console.log('AAA');
  hash(modelStr);
  // const currentHash = await hash(modelStr);
  // console.log('AAAA');
  // console.log({ currentHash, uuid });
  // return lastExported[uuid]?.hash !== currentHash;
  return false;
};

module.exports = {
  assertEnvironmentVariables,
  didModelHashChange,
  getAllModelFiles,
  hash,
  parseLastExportedHashes,
  updateLastExportedHashes,
};
