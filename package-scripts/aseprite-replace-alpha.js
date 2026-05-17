const { globSync } = require('glob');
const parseArgs = require('minimist');
const { lstatSync } = require('fs');
const { execFileSync } = require('child_process');

const { assertEnvironmentVariables } = require('./utils-commonjs');

assertEnvironmentVariables(['ASEPRITE_PATH']);
const asepritePath = process.env.ASEPRITE_PATH;

const argv = parseArgs(process.argv.slice(2));
const { exclude, fromAlpha, toAlpha } = argv;

if (fromAlpha === undefined) {
  throw new Error('Missing required param `fromAlpha`');
}
if (toAlpha === undefined) {
  throw new Error('Missing required param `toAlpha`');
}

const include = 'resourcepack/assets/omega-flowey/textures/custom/**/*';
const excludePatterns = exclude?.split(',') ?? [];
excludePatterns.push('resourcepack/assets/aj/**');

const paths = globSync(include, {
  posix: true,
  ignore: excludePatterns,
});
const files = paths.filter((path) => lstatSync(path).isFile()).sort();

const asepriteArgs = (file) => [
  '--batch',
  '--script-param',
  `path=${file}`,
  '--script-param',
  `fromAlpha=${fromAlpha}`,
  '--script-param',
  `toAlpha=${toAlpha}`,
  '--script',
  'aseprite-scripts/replace-alpha.lua',
];

for (const file of files) {
  if (!file.endsWith('.png')) {
    continue;
  }

  const stdout = execFileSync(asepritePath, asepriteArgs(file));
  process.stdout.write(stdout);
}
