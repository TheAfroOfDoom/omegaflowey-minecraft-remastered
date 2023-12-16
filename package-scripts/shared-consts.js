/** any file that doesn't end in `.md` (targeting READMEs) */
const globExclude = "**/*[!.md]";
const datapacksGlob = `datapacks/${globExclude}`;
const resourcepackGlob = `resourcepack/${globExclude}`;

module.exports = {
  datapacksGlob,
  resourcepackGlob,
};
