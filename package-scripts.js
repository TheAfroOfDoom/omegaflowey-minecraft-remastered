const dotenv = require('dotenv');
const { series } = require('nps-utils');
const { resolve } = require('path');

const { ajmodelDir } = require('./package-scripts/shared-consts');
const { assertEnvironmentVariables } = require('./package-scripts/utils');

dotenv.config();

assertEnvironmentVariables([
  'ASSETS_DIR',
  'BLOCKBENCH_PATH',
  'DATAPACK_MCMETA',
  'MINECRAFT_PATH',
  'RESOURCEPACK_MCMETA',
  'WORLD_NAME',
]);

const assetsDir = process.env.ASSETS_DIR;
const blockbenchPath = process.env.BLOCKBENCH_PATH;
const datapackMcmeta = process.env.DATAPACK_MCMETA;
const minecraftPath = process.env.MINECRAFT_PATH;
const resourcePackMcmeta = process.env.RESOURCEPACK_MCMETA;
const worldName = process.env.WORLD_NAME;

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;

const ajexportScriptPath = resolve('./package-scripts/modules/ajexport.js');

module.exports = {
  scripts: {
    default: 'nps watch',
    watch: '',
    sync: {
      default: 'nps sync.world',
      world: series(
        'rimraf world.zip',
        `bestzip world.zip ${minecraftWorldPath}/*`,
      ),
    },
    lint: {
      default: 'nps lint.custom.resourcepack lint.scripts',
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
        datapacks: `node ./package-scripts/run-linting-rules --include "datapacks/**/*"`,
        resourcepack: `node ./package-scripts/run-linting-rules --include "resourcepack/**/*"`,
        other: `node ./package-scripts/run-linting-rules --include "**/*" --exclude "resourcepack/**/*,datapacks/**/*"`,
      },
    },
    export: {
      default: series('nps export.run', 'echo finished exporting ajmodels'),
      run: `yarn exec "${blockbenchPath}" --script="${ajexportScriptPath}" --cwd="${process.cwd()}" --assets-dir="${assetsDir}" --datapack-mcmeta="${datapackMcmeta}" --resourcepack-mcmeta="${resourcePackMcmeta}"`,
      // forcibly purge the `animated_java` export-cache
      force: series(
        `rimraf ${ajmodelDir}/last_exported_hashes.json`,
        'nps export',
      ),
    },
  },
};
