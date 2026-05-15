const fs = require('fs');

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

const parseLastExportedHashes = (ajblueprintDir) => {
  const lastExportedPath = `${ajblueprintDir}/last_exported_hashes.json`;
  const lastExported = fs.existsSync(lastExportedPath)
    ? JSON.parse(fs.readFileSync(lastExportedPath, 'utf8'))
    : {};
  return lastExported;
};

const updateLastExportedHashes = (ajblueprintDir, lastExported) => {
  const lastExportedPath = `${ajblueprintDir}/last_exported_hashes.json`;
  fs.writeFileSync(
    lastExportedPath,
    JSON.stringify(lastExported, undefined, 2),
  );
};

module.exports = {
  assertEnvironmentVariables,
  parseLastExportedHashes,
  updateLastExportedHashes,
};
