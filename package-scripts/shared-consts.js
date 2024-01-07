/** any file that doesn't end in `.md` (targeting READMEs) */
const globExclude = '**/*';
const datapacksGlob = `datapacks/${globExclude}`;
const resourcepackGlob = `resourcepack/${globExclude}`;

module.exports = {
  datapacksGlob,
  resourcepackGlob,
};
