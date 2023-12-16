const { concurrent, series } = require("nps-utils");
const {
  datapacksGlob,
  resourcepackGlob,
} = require("./package-scripts/shared-consts");

const minecraftPath = 'C:/Users/afro/AppData/Roaming/.minecraft';
const worldName = 'omega-flowey-remastered';
const resourcePackName = 'omega-flowey-remastered-resourcepack';

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const minecraftResourcePackPath = `${minecraftPath}/resourcepacks/${resourcePackName}`;

const watchExcludeFilter = "./package-scripts/watch-filter";

module.exports = {
  scripts: {
    default: concurrent.nps('watch.datapacks', 'watch.resourcepack'),
    watch: {
      datapacks: `watch --wait=1 --filter=${watchExcludeFilter} "nps sync.datapacks" datapacks`,
      resourcepack: `watch --wait=1 --filter=${watchExcludeFilter} "nps sync.resourcepack" resourcepack`,
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
      default: 'nps lint.check',
      check: series('nps lint.prettier.check', 'nps lint.eslint.check'),
      fix: series('nps lint.prettier.fix', 'nps lint.eslint.fix'),
      eslint: {
        default: 'nps lint.eslint.check',
        check: 'eslint .',
        fix: 'eslint --fix .',
      },
      prettier: {
        default: 'nps lint.prettier.check',
        check: 'prettier --check .',
        fix: 'prettier --write .',
      },
    },
  },
};
