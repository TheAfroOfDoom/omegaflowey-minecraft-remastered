/** any file that doesn't end in `.md` (targeting READMEs) */
const globExclude = '**/*';
const datapacksGlob = `datapacks/${globExclude}`;
const resourcepackGlob = `resourcepack/${globExclude}`;
const ajExporterPassthroughFlagStart = '[[[AJ-AUTO-EXPORTER START]]]';
const ajExporterPassthroughFlagEnd = '[[[AJ-AUTO-EXPORTER END]]]';
const ajmodelDir = 'resourcepack/assets/omega-flowey/models';
const ajmodelPathsDontOpenSuffix = '_DONT_OPEN_ME';

module.exports = {
  ajExporterPassthroughFlagStart,
  ajExporterPassthroughFlagEnd,
  ajmodelDir,
  ajmodelPathsDontOpenSuffix,
  datapacksGlob,
  resourcepackGlob,
};
