const { spawn } = require('child_process');
const { resolve } = require('path');

const { assertEnvironmentVariables } = require('./utils-commonjs');
const {
  ajExporterPassthroughFlagStart,
  ajExporterPassthroughFlagEnd,
} = require(`./modules/shared-consts`);

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

const pipeData = (std, data) => {
  const str = data.toString();
  if (!str.includes(ajExporterPassthroughFlagStart)) {
    return;
  }
  const filtered = str
    .split(ajExporterPassthroughFlagStart + ' ')[1]
    .split(ajExporterPassthroughFlagEnd)[0];
  std.write(filtered + '\n');
};

const subprocess = spawn(blockbenchPath, blockbenchOptions);
subprocess.stdout.on('data', (data) => {
  pipeData(process.stdout, data);
});
subprocess.stderr.on('data', (data) => {
  pipeData(process.stderr, data);
});
