const crypto = require('crypto');
const { existsSync, readFileSync, writeFileSync } = require('fs');

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
  const msgUint8 = new TextEncoder().encode(m);
  const hashBuffer = await crypto.subtle.digest('SHA-256', msgUint8);
  const hashArray = Array.from(new Uint8Array(hashBuffer));
  const hashHex = hashArray
    .map((b) => b.toString(16).padStart(2, '0'))
    .join('');
  return hashHex;
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

module.exports = {
  assertEnvironmentVariables,
  hash,
  parseLastExportedHashes,
  updateLastExportedHashes,
};
