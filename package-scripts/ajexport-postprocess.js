const { globSync } = require('glob');
const parseArgs = require('minimist');
const { basename } = require('path');

const minimistOptions = { boolean: ['fix'] };
const argv = parseArgs(process.argv.slice(2), minimistOptions);

const actions = globSync(
  './package-scripts/ajexport-postprocess-actions/*.js',
).map((rulePath) => ({
  name: basename(rulePath, '.js'),
  fn: require(`${process.cwd()}/${rulePath}`),
}));

const main = () => {
  const rootDir = './datapacks/animated_java/data/animated_java';
  for (const action of actions) {
    action.fn(rootDir, argv);
  }
};

main();
