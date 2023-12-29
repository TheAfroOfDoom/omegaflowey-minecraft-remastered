const { concurrent, series } = require("nps-utils");

const minecraftPath = "C:/Users/afro/AppData/Roaming/.minecraft";
const worldName = "omega-flowey-remastered";
const resourcePackName = "omega-flowey-remastered-resourcepack";

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const minecraftResourcePackPath = `${minecraftPath}/resourcepacks/${resourcePackName}`;

module.exports = {
  scripts: {
    default: concurrent.nps("watch.datapacks", "watch.resourcepack"),
    watch: {
      datapacks: 'watch --wait=1 "nps sync.datapacks" datapacks',
      resourcepack: 'watch --wait=1 "nps sync.resourcepack" resourcepack',
    },
    sync: {
      datapacks: series(
        "echo syncing datapacks",
        "nps delete.datapacks",
        "nps copy.datapacks",
        "echo finished datapacks",
        "mpg123 -f -5000 -q ./temp/anyway.mp3 || echo mpg123 not found on your system -- cannot play notification sound"
      ),
      resourcepack: series(
        "echo syncing resourcepack",
        "nps delete.resourcepack",
        "nps copy.resourcepack",
        "echo finished resourcepack",
        "mpg123 -f -5000 -q ./temp/fnaf.mp3 || echo mpg123 not found on your system -- cannot play notification sound"
      ),
      world: series(
        "rimraf world.zip",
        `bestzip world.zip ${minecraftWorldPath}/*`
      ),
    },
    copy: {
      datapacks: `cpy datapacks/**/* ${minecraftWorldPath}/datapacks`,
      resourcepack: `cpy resourcepack/**/* ${minecraftResourcePackPath}`,
    },
    delete: {
      datapacks: `yarn rimraf --glob ${minecraftWorldPath}/datapacks/**/*`,
      resourcepacks: `yarn rimraf --glob ${minecraftResourcePackPath}/**/*`,
    },
    lint: {
      default: 'nps lint.check',
      check: 'prettier --check .',
      fix: 'prettier --write .',
    },
  },
};
