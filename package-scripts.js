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
        "echo finished datapacks"
      ),
      resourcepack: series(
        "echo syncing resourcepack",
        "nps delete.resourcepack",
        "nps copy.resourcepack",
        "echo finished resourcepack"
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
  },
};
