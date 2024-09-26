const chalk = require('chalk');
const { copy, emptyDir, pathExists, readJson, writeJson } = require('fs-extra');
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
  const postProcessors = [];

  // Not `minecraft/sounds.json` since we just use that to disable ambient sounds
  const minecraftPaths = prefixPaths('minecraft/', ['atlases', 'models']);

  // TODO: missing boss_fight / soul_event sounds
  const soundPaths = prefixPaths(
    'sounds/',
    suffixPaths(
      [
        'mus_sfx_a_bullet',
        'mus_sfx_a_target',
        'mus_sfx_generate',
        'mus_sfx_segapower',
        'mus_sfx_yowl',
        'snd_bombfall',
        'snd_bombsplosion',
        'snd_impact',
        'snd_shakerbreaker',
      ],
      '.ogg',
    ),
  );

  // NOTE: this needs to be kept updated with the sounds we export above (`soundPaths`).
  // Do this by loading the build pack in Minecraft and checking the log for `File ... does not exist` warnings
  const pruneSoundsJson = async ({ compiledPath }) => {
    const pathSoundsJson = `${compiledPath}/assets/omega-flowey/sounds.json`;
    const soundsJson = await readJson(pathSoundsJson);

    const keysToPrune = [
      'attack.flies.buzzing',
      'attack.flies.summon',
      'attack.flies.swallow',
      'boss-fight.alarm',
      'boss-fight.static',
      'music.generic.boss-fight.0',
      'music.generic.boss-fight.1',
      'music.generic.boss-fight.repeat.0',
      'music.generic.boss-fight.repeat.1',
      'music.generic.boss-fight.end-note',
      'music.soul.0',
      'music.soul.5',
      'soul.heal',
      'soul.saved',
      'soul.transition',
    ];

    for (const key of keysToPrune) {
      delete soundsJson[key];
    }

    await writeJson(pathSoundsJson, soundsJson, { spaces: 2 });
  };
  postProcessors.push(pruneSoundsJson);

  const omegaFloweyPaths = prefixPaths('omega-flowey/', [
    'font',
    ...soundPaths,
    'textures', // TODO not all them lol
    'sounds.json',
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

  return { paths: resourcepackPaths, postProcessors };
};

const logInfo = (...data) => {
  console.log(chalk.yellow('[INFO]'), ...data);
};
const logVerbose = (...data) => {
  console.log(chalk.magenta('[VERBOSE]'), ...data);
};

const prefixPaths = (prefix, paths) => paths.map((path) => `${prefix}${path}`);
const suffixPaths = (paths, suffix) => paths.map((path) => `${path}${suffix}`);

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

  const logPrefix = chalk.magenta('[R]:');

  const { paths, postProcessors } = getResourcepackCompilePaths();
  if (args.verbose) {
    logVerbose(chalk.bold(chalk.magenta('Resourcepack compile paths:')));
    for (const src of paths) {
      logVerbose(logPrefix, src);
    }
  }

  const copySrcToDest = async (src) => {
    const srcPathExists = await pathExists(src);
    if (!srcPathExists) {
      throw new Error(`Source path does not exist: ${chalk.yellow(src)}`);
    }

    const dest = `${compiledPath}/${src.replace(/^resourcepack\//, '')}`;
    await copy(src, dest, { ...copyOptions });
  };

  await Promise.all(paths.map(copySrcToDest));
  logInfo(
    `Finished copying ${paths.length} ${chalk.magenta('resourcepack')} paths`,
  );

  logInfo(logPrefix, `Running ${postProcessors.length} post-processors`);
  await Promise.all(
    postProcessors.map((postProcessor) => postProcessor({ compiledPath })),
  );
  logInfo(logPrefix, `Finished post-processing`);
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
