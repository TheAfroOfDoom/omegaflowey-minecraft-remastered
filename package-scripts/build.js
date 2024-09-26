const chalk = require('chalk');
const { copy, emptyDir, pathExists } = require('fs-extra');
const parseArgs = require('minimist');

const buildDir = './build';

const getSummitDatapackPaths = () => {
  const attackPaths = prefixPaths('hostile/omega-flowey/attack/', [
    'bomb',
    'dentata-snakes',
    'finger-guns',
    'friendliness-pellets',
    'homing-vines',
    'random',
    'x-bullets-lower',
    'x-bullets-shared',
    'x-bullets-upper',
    'reset_scores.mcfunction',
    'tick.mcfunction',
  ]);

  const entityPaths = prefixPaths('entity/function/', [...attackPaths]);

  const utilsPaths = prefixPaths('utils/function/', [
    'math/max.mcfunction',
    'math/min.mcfunction',
    'error.mcfunction',
    'log.mcfunction',
  ]);

  const primaryDatapackPaths = prefixPaths('omega-flowey/', [
    'pack.mcmeta',
    ...prefixPaths('data/', [
      'minecraft',
      ...entityPaths,
      'omega-flowey/function/',
      ...utilsPaths,
    ]),
  ]);

  const datapackPaths = prefixPaths('datapacks/', [
    'animated_java/data',
    'animated_java/pack.mcmeta',
    'mathf',
    'mud',
    ...primaryDatapackPaths,
  ]);

  return datapackPaths;
};

const getSummitResourcepackPaths = () => {
  // Not `minecraft/sounds.json` since we just use that to disable ambient sounds
  const minecraftPaths = prefixPaths('minecraft/', ['atlases', 'models']);

  // const soundPaths = prefixPaths('sounds/', []);

  const omegaFloweyPaths = prefixPaths('omega-flowey/', [
    'font',
    'models/entity', // TODO probably none of these actually since it's all .ajblueprints
    'sounds', // TODO not all them lol
    'textures', // TODO not all them lol
    'sounds.json', // TODO prune this file in dest location (automatically?)
  ]);

  const assetsPaths = prefixPaths('assets/', [
    'animated_java',
    ...minecraftPaths,
    ...omegaFloweyPaths,
  ]);

  const resourcepackPaths = prefixPaths('resourcepack/', [
    'pack.mcmeta',
    'pack.png',
    ...assetsPaths,
  ]);

  return resourcepackPaths;
};

const logInfo = (...data) => {
  console.log(chalk.yellow('[INFO]'), ...data);
};
const logVerbose = (...data) => {
  console.log(chalk.magenta('[VERBOSE]'), ...data);
};

const prefixPaths = (prefix, paths) => paths.map((path) => `${prefix}${path}`);

const getDatapackCompilePaths = () => {
  const { variant } = args;
  switch (variant) {
    case 'summit':
      return getSummitDatapackPaths();
    default:
      throw new Error(`Invalid variant: ${variant}`);
  }
};

const getResourcepackCompilePaths = () => {
  const { variant } = args;
  switch (variant) {
    case 'summit':
      return getSummitResourcepackPaths();
    default:
      throw new Error(`Invalid variant: ${variant}`);
  }
};

const copyOptions = {
  overwrite: false,
};

const compileDatapack = async () => {
  const compiledPath = `${buildDir}/omegaFloweyDatapack`;

  await emptyDir(compiledPath);

  const paths = getDatapackCompilePaths();
  if (args.verbose) {
    logVerbose(chalk.bold(chalk.blue('Datapack compile paths:')));
    for (const src of paths) {
      logVerbose(chalk.blue('[D]:'), src);
    }
  }

  const copySrcToDest = async (src) => {
    const srcPathExists = await pathExists(src);
    if (!srcPathExists) {
      throw new Error(`Source path does not exist: ${chalk.yellow(src)}`);
    }

    const dest = `${compiledPath}/${src}`;
    await copy(src, dest, { ...copyOptions });
  };

  await Promise.all(paths.map(copySrcToDest));
  logInfo(`Finished copying ${paths.length} ${chalk.blue('datapack')} paths`);
};

const compileResourcepack = async () => {
  const compiledPath = `${buildDir}/omegaFloweyResourcepack`;

  await emptyDir(compiledPath);

  const paths = getResourcepackCompilePaths();
  if (args.verbose) {
    logVerbose(chalk.bold(chalk.magenta('Resourcepack compile paths:')));
    for (const src of paths) {
      logVerbose(chalk.magenta('[R]:'), src);
    }
  }

  const copySrcToDest = async (src) => {
    const srcPathExists = await pathExists(src);
    if (!srcPathExists) {
      throw new Error(`Source path does not exist: ${chalk.yellow(src)}`);
    }

    const dest = `${compiledPath}/${src}`;
    await copy(src, dest, { ...copyOptions });
  };

  await Promise.all(paths.map(copySrcToDest));
  logInfo(
    `Finished copying ${paths.length} ${chalk.magenta('resourcepack')} paths`,
  );
};

const compile = async () => {
  await Promise.all([compileDatapack(), compileResourcepack()]);
};

let args;
const main = async () => {
  const minimistOptions = {
    alias: { v: 'verbose' },
    default: { variant: 'summit' },
  };
  args = parseArgs(process.argv.slice(2), minimistOptions);

  await compile();

  process.exit(0);
};

main();
