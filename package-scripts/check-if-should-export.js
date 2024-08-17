// const chalk = require('chalk');
const { readFileSync } = require('fs');

const { ajblueprintDir } = require('./shared-consts');
const {
  getAllModelFiles,
  parseLastExportedHashes,
  didModelHashChange,
} = require('./utils');

/**
 * Compares `last_exported_hashes.json` against each model's hash:
 * - returns `0` if there are models that need to be exported.
 *      This lets consecutive commands in bash to run, see `nps export.default` for an example
 * - returns `1` if there are no models that need to be exported.
 *      This prevents us from opening the Blockbench executable unnecessarily.
 */
const main = async () => {
  const lastExported = parseLastExportedHashes(ajblueprintDir);
  const files = await getAllModelFiles(ajblueprintDir);

  console.log('fl:', files.length);
  const didFilesChange = await files.some(async (file) => {
    console.log({ file });
    const content = readFileSync(file, 'utf-8');
    console.log(content.length);
    const test = await didModelHashChange(content, lastExported);
    console.log({ test });
    return test;
  });

  if (didFilesChange) {
    process.exit(0);
  } else {
    process.exit(1);
  }
};

if (require.main === module) {
  await main();
}
