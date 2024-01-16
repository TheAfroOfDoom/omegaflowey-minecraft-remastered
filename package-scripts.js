const dotenv = require('dotenv');
const { concurrent, series } = require('nps-utils');
const { resolve } = require('path');

const {
  datapacksGlob,
  resourcepackGlob,
} = require('./package-scripts/shared-consts');

dotenv.config();

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
assertEnvironmentVariables([
  'BLOCKBENCH_PATH',
  'MINECRAFT_PATH',
  'RESOURCEPACK_NAME',
  'WORLD_NAME',
]);

const blockbenchPath = process.env.BLOCKBENCH_PATH;
const minecraftPath = process.env.MINECRAFT_PATH;
const resourcePackName = process.env.RESOURCEPACK_NAME;
const worldName = process.env.WORLD_NAME;

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const minecraftResourcePackPath = `${minecraftPath}/resourcepacks/${resourcePackName}`;

const ajexportScriptPath = resolve('./package-scripts/modules/ajexport.js');
const ajmodelDirectory = 'resourcepack/assets/omega-flowey/models';
const watchExcludeFilter = './package-scripts/watch-filter';

module.exports = {
  scripts: {
    default: 'nps watch',
    watch: {
      default: concurrent.nps(
        'watch.datapacks',
        'watch.resourcepack',
        'watch.models',
      ),
      datapacks: `watch --wait=1 --filter=${watchExcludeFilter} "nps sync.datapacks" datapacks`,
      resourcepack: `watch --wait=1 --filter=${watchExcludeFilter} "nps sync.resourcepack" resourcepack`,
      models: `watch --wait=10 --filter=${watchExcludeFilter} "nps export" ${ajmodelDirectory}`,
    },
    sync: {
      datapacks: series(
        'echo syncing datapacks',
        'nps delete.datapacks',
        'nps copy.datapacks',
        'echo finished datapacks',
        'mpg123 -f -5000 -q ./temp/anyway.mp3 || echo mpg123 not found on your system -- cannot play notification sound',
      ),
      resourcepack: series(
        'echo syncing resourcepack',
        'nps delete.resourcepack',
        'nps copy.resourcepack',
        'echo finished resourcepack',
        'mpg123 -f -5000 -q ./temp/fnaf.mp3 || echo mpg123 not found on your system -- cannot play notification sound',
      ),
      world: series(
        'rimraf world.zip',
        `bestzip world.zip ${minecraftWorldPath}/*`,
      ),
    },
    copy: {
      datapacks: `cpy ${datapacksGlob} ${minecraftWorldPath}/datapacks`,
      resourcepack: `cpy ${resourcepackGlob} ${minecraftResourcePackPath}`,
    },
    delete: {
      datapacks: `yarn rimraf --glob ${minecraftWorldPath}/datapacks/**/*`,
      resourcepacks: `yarn rimraf --glob ${minecraftResourcePackPath}/**/*`,
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
        datapacks: `node ./package-scripts/run-linting-rules --include "${datapacksGlob}"`,
        resourcepack: `node ./package-scripts/run-linting-rules --include "${resourcepackGlob}"`,
        other: `node ./package-scripts/run-linting-rules --include "**/*" --exclude "${resourcepackGlob},${datapacksGlob}"`,
      },
    },
    export: series(
      `yarn exec "${blockbenchPath}" --bb-cli "${ajexportScriptPath}"`,
      'echo finished exporting ajmodels',
    ),
  },
};
