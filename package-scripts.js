const npsUtils = require("nps-utils");

module.exports = {
  scripts: {
    default: npsUtils.concurrent.nps("watch.datapacks", "watch.resourcepack"),
    watch: {
      datapacks: 'watch --wait=1 "nps sync.datapacks" datapacks',
      resourcepack: 'watch --wait=1 "nps sync.resourcepack" resourcepack',
    },
    sync: {
      datapacks:
        "echo syncing datapacks && nps delete.datapacks copy.datapacks && echo finished datapacks",
      resourcepack:
        "echo syncing resourcepack && nps delete.resourcepack copy.resourcepack && echo finished resourcepack",
    },
    copy: {
      datapacks:
        "cpy 'datapacks/**/*' 'C:/Users/afro/AppData/Roaming/.minecraft/saves/omega-flowey-remastered/datapacks'",
      resourcepack:
        "cpy 'resourcepack/**/*' 'C:/Users/afro/AppData/Roaming/.minecraft/resourcepacks/omega-flowey-remastered-resourcepack'",
    },
    delete: {
      datapacks:
        "rimraf --glob 'C:/Users/afro/AppData/Roaming/.minecraft/saves/omega-flowey-remastered/datapacks/*'",
      resourcepacks:
        "rimraf --glob 'C:/Users/afro/AppData/Roaming/.minecraft/resourcepacks/omega-flowey-remastered-resourcepack/*'",
    },
  },
};
