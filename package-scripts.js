const dotenv = require('dotenv');
const { series } = require('nps-utils');

const { ajblueprintDir } = require('./package-scripts/modules/shared-consts');

dotenv.config();

const watchScriptPath = './package-scripts/watch.js';

const allAnimatedJavaExportFiles = [
  'datapacks/animated_java/data',
  'datapacks/animated_java/data.ajmeta',
  'resourcepack/assets.ajmeta',
  'resourcepack/assets/aj',
  'resourcepack/assets/minecraft/models/item/pink_dye.json',
  `${ajblueprintDir}/last_exported_hashes.json`,
];
const allAnimatedJavaExportFilesFormatted =
  allAnimatedJavaExportFiles.join(',');
const exclude = `${allAnimatedJavaExportFilesFormatted},datapacks/summit-dp-core/**/*`;

const floweyWorldSyncPath = './world.zip';
const minecraftPath = process.env.MINECRAFT_PATH;
const worldName = process.env.WORLD_NAME;
const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const worldSyncArgs = `--backup-path="${floweyWorldSyncPath}" --world-path="${minecraftWorldPath}"`;

const smithedSummitWorldSyncPath =
  './bin/smithed-summit-2026/world/smithed-summit-2026-omegaflowey-plot.zip';
const smithedSummitWorldSyncArgs = `--backup-path="${smithedSummitWorldSyncPath}" --world-path="${process.env.SMITHED_SUMMIT_WORLD_PATH}"`;

module.exports = {
  scripts: {
    default: 'nps watch',
    aseprite: {
      emissive: `node ./package-scripts/aseprite-replace-alpha --fromAlpha 254 --toAlpha 255 --exclude "${exclude}"`,
      noshading: `node ./package-scripts/aseprite-replace-alpha --fromAlpha 253 --toAlpha 255 --exclude "${exclude}"`,
    },
    build: {
      default: 'nps build.summit',
      clean: 'rimraf ./build',
      summit: 'node ./package-scripts/build',
    },
    'count-bones': 'node ./package-scripts/count-aj-bones',
    export: {
      default: series.nps('export.run', 'export.postprocess'),
      run: 'node ./package-scripts/run-exporter',
      // forcibly purge the `animated_java` export-cache
      force: series(
        `rimraf ${allAnimatedJavaExportFiles.join(' ')}`,
        'nps export',
      ),
      postprocess: `node ./package-scripts/ajexport-postprocess`,
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
        datapacks: `node ./package-scripts/run-linting-rules --fix --include "datapacks/**/*" --exclude "${exclude}"`,
        resourcepack: `node ./package-scripts/run-linting-rules --include "resourcepack/**/*" --exclude "${exclude}"`,
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
      default: 'nps sync.summit',
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
