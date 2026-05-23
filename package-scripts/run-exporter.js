const { execFileSync } = require('child_process');
const { resolve } = require('path');

const { assertEnvironmentVariables } = require('./utils-commonjs');

assertEnvironmentVariables([
  'ASSETS_DIR',
  'BLOCKBENCH_PATH',
  'DATAPACK',
  'RESOURCEPACK',
]);
const assetsDir = process.env.ASSETS_DIR;
const blockbenchPath =
  process.platform === 'darwin'
    ? `open "${process.env.BLOCKBENCH_PATH}" --args`
    : process.env.BLOCKBENCH_PATH;
const datapack = process.env.DATAPACK;
const resourcePack = process.env.RESOURCEPACK;

const ajexportScriptPath = resolve('./package-scripts/modules/ajexport.js');

const blockbenchOptions = [
  `--script="${ajexportScriptPath}"`,
  `--cwd="${process.cwd()}"`,
  `--assets-dir="${assetsDir}"`,
  `--datapack="${datapack}"`,
  `--resourcepack="${resourcePack}"`,
];

const stdout = execFileSync(blockbenchPath, blockbenchOptions);
process.stdout.write(stdout);
