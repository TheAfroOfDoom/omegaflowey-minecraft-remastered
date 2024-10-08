const chalk = require('chalk');
const { copy, emptyDir, pathExists, readJson, writeJson } = require('fs-extra');
const parseArgs = require('minimist');
const { rimraf } = require('rimraf');

const buildDir = './build';

const getSummitDatapackPaths = () => {
  const postProcessors = [];

  const attackPaths = prefixPaths('attack/', [
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

  const bossFightPaths = prefixPaths('directorial/boss_fight/', [
    'shared',
    'summit',
    'tick.mcfunction',
  ]);

  const entityOmegaFloweyPaths = prefixPaths('omega-flowey/', [
    'animate',
    ...attackPaths,
    'summon',
    'animate.mcfunction',
    'tick.mcfunction',
  ]);

  const hostilePaths = prefixPaths('hostile/', [
    ...entityOmegaFloweyPaths,
    'tick.mcfunction',
  ]);

  const playerPaths = prefixPaths('player/', [
    'interacted_with_github_description',
    'interacted_with_github_description.mcfunction',
    'rejoin',
    'room',
    'room.mcfunction',
    'shake_screen.mcfunction',
    'tick.mcfunction',
  ]);

  const soulPaths = prefixPaths('soul/', [
    'shared',
    'soul_5',
    'reset_scores.mcfunction',
    'tick.mcfunction',
  ]);

  const entityUtilsPaths = prefixPaths('utils/', [
    'bounce',
    'bounce.mcfunction',
    'damage.mcfunction',
    'face_closest_player_macro.mcfunction',
    'face_closest_player.mcfunction',
    'move_directional.mcfunction',
    'move_forward.mcfunction',
    'shake_screen_macro.mcfunction',
    'shake_screen.mcfunction',
    'store_position.mcfunction',
  ]);

  const entityPaths = prefixPaths('entity/', [
    'advancement/player_interacted_with_github_description.json',
    ...prefixPaths('function/', [
      ...bossFightPaths,
      'directorial/tick.mcfunction',
      ...hostilePaths,
      ...playerPaths,
      'remove_animated_java_models',
      ...soulPaths,
      ...entityUtilsPaths,
      'remove_animated_java_models.mcfunction',
      'reset_scores.mcfunction',
      'setup.mcfunction',
      'tick.mcfunction',
    ]),
  ]);

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
  const removeResetFunction = async ({ compiledPath }) => {
    const resetFunctionFile = `${compiledPath}/datapacks/omega-flowey/data/omega-flowey/function/reset.mcfunction`;
    await rimraf(resetFunctionFile);
  };
  postProcessors.push(removeResetFunction);

  const datapackPaths = prefixPaths('datapacks/', [
    'animated_java/data',
    'animated_java/pack.mcmeta',
    'mathf',
    'mud',
    ...primaryDatapackPaths,
  ]);

  return { paths: datapackPaths, postProcessors };
};

const getSummitResourcepackPaths = () => {
  const postProcessors = [];

  // Not `minecraft/sounds.json` since we just use that to disable ambient sounds
  const minecraftPaths = prefixPaths('minecraft/', ['atlases', 'models']);

  const soundPaths = prefixPaths(
    'sounds/',
    suffixPaths(
      [
        'mus_f_6s_6',
        'mus_f_alarm',
        'mus_f_noise',
        'mus_f_part1',
        'mus_f_part2',
        'mus_f_saved',
        'mus_sfx_a_bullet',
        'mus_sfx_a_target',
        'mus_sfx_generate',
        'mus_sfx_segapower',
        'mus_sfx_yowl',
        'snd_bombfall',
        'snd_bombsplosion',
        'snd_break2_c',
        'snd_heal_c',
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
      'music.generic.boss-fight.repeat.0',
      'music.generic.boss-fight.repeat.1',
      'music.generic.boss-fight.end-note',
      'music.phase.repeat.0',
      'music.phase.repeat.1',
      'music.phase.repeat.end-note',
      'music.soul.0',
    ];

    for (const key of keysToPrune) {
      delete soundsJson[key];
    }

    await writeJson(pathSoundsJson, soundsJson, { spaces: 2 });
  };
  postProcessors.push(pruneSoundsJson);

  const attackTexturePaths = prefixPaths('attacks/', [
    ...suffixPaths(
      [
        'blank',
        'blank_1',
        'blank_2',
        'finger-gun-laser',
        'flowery',
        'friendliness-pellet-ring-blinking',
        'friendliness-pellet-ring-finished',
        'homing-vine',
        'homing-vine-blinking-lane',
        'moss_block_1',
      ],
      '.png',
    ),
    ...suffixPaths(
      ['friendliness-pellet-ring-blinking', 'homing-vine-blinking-lane'],
      '.png.mcmeta',
    ),
  ]);

  const texturePaths = prefixPaths('textures/custom/', [
    ...attackTexturePaths,
    'dentata_snake_ball',
    'lower_eye',
    'pipe',
    'soul',
    'tv_screen',
    'x_bullets_shared',
    'black.png',
    'white.png',
  ]);

  const deletePaintDotNetFiles = async ({ compiledPath }) => {
    const compiledTexturesDir = `${compiledPath}/assets/omega-flowey/textures`;

    const pdnGlob = `${compiledTexturesDir}/**/*.pdn`;

    await rimraf(pdnGlob, { glob: true });
  };
  postProcessors.push(deletePaintDotNetFiles);

  const omegaFloweyPaths = prefixPaths('omega-flowey/', [
    'font',
    ...soundPaths,
    ...texturePaths,
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

const LOG_LEVEL = {
  VERBOSE: 'LOG_LEVEL.VERBOSE',
  INFO: 'LOG_LEVEL.INFO',
  ERROR: 'LOG_LEVEL.ERROR',
};

const logVerbose = (...data) => {
  console.log(chalk.magenta('[VERBOSE]'), ...data);
};
const logInfo = (...data) => {
  console.log(chalk.yellow('[INFO]'), ...data);
};
const logError = (...data) => {
  const xEmoji = '\u{274C}';
  console.log(chalk.red('[ERROR]'), ...data, xEmoji);
};

const logLevel = (level, ...data) => {
  switch (level) {
    case LOG_LEVEL.VERBOSE:
      logVerbose(...data);
      break;
    case LOG_LEVEL.INFO:
      logInfo(...data);
      break;
    case LOG_LEVEL.ERROR:
      logError(...data);
      break;
    default:
      console.log(...data);
  }
};

const prefixPaths = (prefix, paths) => paths.map((path) => `${prefix}${path}`);
const suffixPaths = (paths, suffix) => paths.map((path) => `${path}${suffix}`);

const getCompilePaths = ({ getSummitPaths }) => {
  const { variant } = args;
  switch (variant) {
    case 'summit':
      return getSummitPaths();
    default:
      throw new Error(`Invalid variant: ${variant}`);
  }
};

const getDatapackCompilePaths = () =>
  getCompilePaths({ getSummitPaths: getSummitDatapackPaths });
const getResourcepackCompilePaths = () =>
  getCompilePaths({ getSummitPaths: getSummitResourcepackPaths });

const copyOptions = {
  overwrite: false,
};

const compile = async ({
  compileDir,
  compilePaths,
  logColor,
  logPrefix,
  packType,
  processSrc,
}) => {
  processSrc ??= (path) => path;

  const log = (...data) => {
    // If first element is a log level
    if (Object.values(LOG_LEVEL).includes(data[0])) {
      data.splice(1, 0, logColor(logPrefix));
    }

    logLevel(...data);
  };
  const verbose = (...data) => {
    log(LOG_LEVEL.VERBOSE, ...data);
  };
  const info = (...data) => {
    log(LOG_LEVEL.INFO, ...data);
  };
  const error = (...data) => {
    log(LOG_LEVEL.ERROR, ...data);
  };

  const compiledPath = `${buildDir}/${compileDir}`;

  await emptyDir(compiledPath);

  const { paths, postProcessors } = compilePaths();
  if (args.verbose) {
    verbose(chalk.bold(`${logColor(packType)} compile paths:`));
    for (const src of paths) {
      verbose(src);
    }
  }

  const copySrcToDest = async (src) => {
    const srcPathExists = await pathExists(src);
    if (!srcPathExists) {
      const errorMsg = `Source path does not exist: ${chalk.yellow(src)}`;
      error(errorMsg);
      throw new Error(errorMsg);
    }

    const srcProcessed = processSrc(src);
    const dest = `${compiledPath}/${srcProcessed}`;
    await copy(src, dest, { ...copyOptions });
  };

  await Promise.all(paths.map(copySrcToDest));
  const checkmark = '\u{2705}';
  info(`Finished copying ${paths.length} paths ${checkmark}`);

  if (postProcessors.length > 0) {
    info(`Running ${postProcessors.length} post-processors`);
    await Promise.all(
      postProcessors.map((postProcessor) => postProcessor({ compiledPath })),
    );
    info(`Finished post-processing ${checkmark}`);
  }
};

const compileDatapack = async () =>
  compile({
    compileDir: 'omegaFloweyDatapack',
    compilePaths: getDatapackCompilePaths,
    logColor: chalk.blue,
    logPrefix: '[D]:',
    packType: 'Datapack',
  });

const compileResourcepack = async () =>
  compile({
    compileDir: 'omegaFloweyResourcepack',
    compilePaths: getResourcepackCompilePaths,
    logColor: chalk.magenta,
    logPrefix: '[R]:',
    packType: 'Resourcepack',
    processSrc: (path) => path.replace(/^resourcepack\//, ''),
  });

const compileAll = async () => {
  await Promise.all([compileDatapack(), compileResourcepack()]);
};

let args;
const main = async () => {
  const minimistOptions = {
    alias: { v: 'verbose' },
    default: { variant: 'summit' },
  };
  args = parseArgs(process.argv.slice(2), minimistOptions);

  await compileAll();

  process.exit(0);
};

main();
