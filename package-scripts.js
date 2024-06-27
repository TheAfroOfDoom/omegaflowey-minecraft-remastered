const dotenv = require('dotenv');
const { series } = require('nps-utils');
const { resolve } = require('path');

const { ajblueprintDir } = require('./package-scripts/shared-consts');
const { assertEnvironmentVariables } = require('./package-scripts/utils');

dotenv.config();

assertEnvironmentVariables([
  'ASSETS_DIR',
  'BLOCKBENCH_PATH',
  'DATAPACK_MCMETA',
  'RESOURCEPACK_MCMETA',
]);

const assetsDir = process.env.ASSETS_DIR;
const blockbenchPath = process.env.BLOCKBENCH_PATH;
const datapackMcmeta = process.env.DATAPACK_MCMETA;
const resourcePackMcmeta = process.env.RESOURCEPACK_MCMETA;

// we have to resolve this path so we can use it with Blockbench
const ajexportScriptPath = resolve('./package-scripts/modules/ajexport.js');
const watchScriptPath = './package-scripts/watch.js';

const allAnimatedJavaExportFiles = [
  'datapacks/animated_java/data',
  'datapacks/animated_java/data.ajmeta',
  'resourcepack/assets.ajmeta',
  'resourcepack/assets/animated_java',
  'resourcepack/assets/minecraft/models/item/white_dye.json',
  `${ajblueprintDir}/last_exported_hashes.json`,
];
const allAnimatedJavaExportFilesFormatted =
  allAnimatedJavaExportFiles.join(',');

module.exports = {
  scripts: {
    default: 'nps watch',
    watch: {
      default: `node ${watchScriptPath}`,
      experimental: `node ${watchScriptPath} --experimental`,
    },
    sync: {
      default: 'nps sync.world',
      world: {
        default: 'nps sync.world.up',
        down: 'node ./package-scripts/sync-world --down',
        up: 'node ./package-scripts/sync-world --up',
      },
    },
    lint: {
      default: 'nps lint.custom lint.scripts',
      fix: 'nps lint.scripts.fix',
      scripts: {
        default: 'nps lint.scripts.check',
        check: series.nps(
          'lint.scripts.prettier.check',
          'lint.scripts.eslint.check',
        ),
        fix: series.nps('lint.scripts.prettier.fix', 'lint.scripts.eslint.fix'),
        eslint: {
          default: 'nps lint.scripts.eslint.check',
          check: 'eslint .',
          fix: 'eslint --fix .',
        },
        prettier: {
          default: 'nps lint.scripts.prettier.check',
          check: 'prettier --check .',
          fix: 'prettier --write .',
        },
      },
      custom: {
        default: 'nps lint.custom.all',
        all: series.nps(
          'lint.custom.datapacks',
          'lint.custom.resourcepack',
          'lint.custom.other',
        ),
        datapacks: `node ./package-scripts/run-linting-rules --include "datapacks/**/*" --exclude "${allAnimatedJavaExportFilesFormatted}"`,
        resourcepack: `node ./package-scripts/run-linting-rules --include "resourcepack/**/*" --exclude "${allAnimatedJavaExportFilesFormatted}"`,
        other:
          'node ./package-scripts/run-linting-rules --include "**/*" --exclude "resourcepack/**/*,datapacks/**/*"',
      },
    },
    export: {
      default: series('nps export.run', 'echo finished exporting ajblueprints'),
      run: `yarn exec "${blockbenchPath}" --script="${ajexportScriptPath}" --cwd="${process.cwd()}" --assets-dir="${assetsDir}" --datapack-mcmeta="${datapackMcmeta}" --resourcepack-mcmeta="${resourcePackMcmeta}"`,
      // forcibly purge the `animated_java` export-cache
      force: series(
        `rimraf ${allAnimatedJavaExportFiles.join(' ')}`,
        'nps export',
      ),
    },
  },
};
