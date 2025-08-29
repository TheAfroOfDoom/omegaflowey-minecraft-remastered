const dotenv = require('dotenv');
const { series } = require('nps-utils');
const { resolve } = require('path');

const { ajblueprintDir } = require('./package-scripts/shared-consts');
const { assertEnvironmentVariables } = require('./package-scripts/utils');

dotenv.config();

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
    : process.platform === 'win32'
      ? `"${process.env.BLOCKBENCH_PATH}"`
      : null;
const datapack = process.env.DATAPACK;
const resourcePack = process.env.RESOURCEPACK;

// we have to resolve this path so we can use it with Blockbench
const ajexportScriptPath = resolve('./package-scripts/modules/ajexport.js');
const watchScriptPath = './package-scripts/watch.js';

const allAnimatedJavaExportFiles = [
  'datapacks/animated_java/data',
  'datapacks/animated_java/data.ajmeta',
  'resourcepack/assets.ajmeta',
  'resourcepack/assets/animated_java',
  'resourcepack/assets/minecraft/models/item/pink_dye.json',
  `${ajblueprintDir}/last_exported_hashes.json`,
];
const allAnimatedJavaExportFilesFormatted =
  allAnimatedJavaExportFiles.join(',');

const floweyWorldSyncPath = './world.zip';
const minecraftPath = process.env.MINECRAFT_PATH;
const worldName = process.env.WORLD_NAME;
const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const worldSyncArgs = `--backup-path="${floweyWorldSyncPath}" --world-path="${minecraftWorldPath}"`;

const smithedSummitWorldSyncPath =
  './bin/smithed-summit-2024/world/smithed-summit-2024-omegaflowey-plot.zip';
const smithedSummitWorldSyncArgs = `--backup-path="${smithedSummitWorldSyncPath}" --world-path="${process.env.SMITHED_SUMMIT_WORLD_PATH}"`;

module.exports = {
  scripts: {
    default: 'nps watch',
    build: {
      default: 'nps build.summit',
      clean: 'rimraf ./build',
      summit: 'node ./package-scripts/build',
    },
    'count-bones': 'node ./package-scripts/count-aj-bones',
    export: {
      default: 'nps export.run',
      run: `yarn exec ${blockbenchPath} --script="${ajexportScriptPath}" --cwd="${process.cwd()}" --assets-dir="${assetsDir}" --datapack="${datapack}" --resourcepack="${resourcePack}"`,
      // forcibly purge the `animated_java` export-cache
      force: series(
        `rimraf ${allAnimatedJavaExportFiles.join(' ')}`,
        'nps export',
      ),
    },
    lint: {
      default: 'nps lint.custom lint.scripts',
      fix: series.nps('lint.custom.fix', 'lint.scripts.fix'),
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
        fix: 'nps "lint.custom.datapacks --fix"',
        datapacks: `node ./package-scripts/run-linting-rules --fix --include "datapacks/**/*" --exclude "${allAnimatedJavaExportFilesFormatted}"`,
        resourcepack: `node ./package-scripts/run-linting-rules --include "resourcepack/**/*" --exclude "${allAnimatedJavaExportFilesFormatted}"`,
        other:
          'node ./package-scripts/run-linting-rules --include "**/*" --exclude "resourcepack/**/*,datapacks/**/*"',
      },
    },
    log: `code -r "${minecraftPath}/logs/latest.log"`,
    stats: {
      default: 'nps stats.sounds',
      sounds: `yarn exec pwsh -Command "./package-scripts/list-sound-stats.ps1" -Path "resourcepack/assets/omega-flowey/sounds" -Out "resourcepack/assets/omega-flowey/sounds/stats.txt"`,
    },
    sync: {
      default: 'nps sync.world',
      world: {
        default: 'nps sync.world.up',
        down: `node ./package-scripts/sync-world --down ${worldSyncArgs}`,
        up: `node ./package-scripts/sync-world --up ${worldSyncArgs}`,
      },
      summit: {
        default: 'nps sync.summit.up',
        down: `node ./package-scripts/sync-world --down ${smithedSummitWorldSyncArgs}`,
        up: `node ./package-scripts/sync-world --up ${smithedSummitWorldSyncArgs}`,
      },
    },
    watch: {
      default: `node ${watchScriptPath}`,
    },
  },
};
