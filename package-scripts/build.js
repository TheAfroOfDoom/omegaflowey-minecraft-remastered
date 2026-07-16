const chalk = require('chalk');
const { copy, emptyDir, pathExists, readJson, writeJson } = require('fs-extra');
const { glob } = require('glob');
const parseArgs = require('minimist');
const { rimraf } = require('rimraf');
const { zip } = require('zip-a-folder');

const buildDir = './build';

const prefixPaths = (prefix, paths) => paths.map((path) => `${prefix}${path}`);
const suffixPaths = (paths, suffix) => paths.map((path) => `${path}${suffix}`);

const animatedJavaExportsToPrune = prefixPaths('omegaflowey_', [
  'arena_box_vanilla',
  'climbing_hold',
  'petal_pipe_circle',
  'petal_pipe_middle',
  'soul_0_bandaid',
  'soul_0_sword',
  'soul_1_glove',
  'soul_1_thumb',
  'soul_2_note',
  'soul_2_shoe',
  'soul_2_star',
  'soul_3_word_1',
  'soul_3_word_2',
  'soul_3_word_3',
  'soul_3_word_4',
  'soul_3_word_6',
  'soul_3_word_7',
  'soul_3_word_8_template',
  'soul_3_word_9',
  'soul_3_word_10',
  'soul_3_word_11',
  'soul_3_word_12',
  'soul_3_word_13',
  'soul_3_word_14',
  'soul_5_bullet',
  'soul_5_crosshair',
  'soul_5_flower',
  'soul_5_gun',
]);

const getSummitDatapackPaths = () => {
  const postProcessors = [];

  const attackPaths = prefixPaths('attack/', [
    'bomb',
    'dentata-snakes',
    'finger-guns',
    'flamethrower',
    'flies',
    'friendliness-pellets',
    'homing-vines',
    'random',
    'shared',
    'x-bullets-lower',
    'x-bullets-shared',
    'x-bullets-upper',
    'reset_scores.mcfunction',
    'tick.mcfunction',
  ]);

  const bossFightPaths = prefixPaths('directorial/boss_fight/', [
    'shared',
    'summit-2026',
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
    'death',
    'interacted',
    'rejoin',
    'room',
    'room.mcfunction',
    'tick.mcfunction',
  ]);

  const soulPaths = prefixPaths('soul/', [
    'shared',
    'soul_3',
    'soul_4',
    'reset_scores.mcfunction',
    'tick.mcfunction',
  ]);

  const entityUtilsPaths = prefixPaths('utils/', [
    'bounce',
    'bounce.mcfunction',
    'damage',
    'damage.mcfunction',
    'face_closest_player_macro.mcfunction',
    'face_closest_player.mcfunction',
    'move_directional.mcfunction',
    'move_forward.mcfunction',
  ]);

  const entityPaths = prefixPaths('omegaflowey/', [
    ...prefixPaths('function/entity/', [
      ...bossFightPaths,
      'decorative',
      'directorial/tick.mcfunction',
      ...hostilePaths,
      ...playerPaths,
      ...prefixPaths('remove_animated_java_models/', [
        'boss_fight.mcfunction',
        'summit-2026.mcfunction',
      ]),
      'shared',
      ...soulPaths,
      ...entityUtilsPaths,
      'remove_animated_java_models.mcfunction',
      'reset_scores.mcfunction',
      'setup.mcfunction',
      'tick.mcfunction',
    ]),
  ]);

  const mainPaths = prefixPaths('omegaflowey/function/main/', [
    ...prefixPaths('setup/', [
      'const.mcfunction',
      'objectives.mcfunction',
      'queue.mcfunction',
    ]),
    'summit-2026',
    'telemetry',
    'persistent_tick.mcfunction',
    'setup.mcfunction',
    'tick.mcfunction',
  ]);

  const utilsPaths = prefixPaths('omegaflowey/function/utils/', [
    'error.mcfunction',
    'math/max.mcfunction',
    'math/min.mcfunction',
    'log',
    'log.mcfunction',
  ]);

  const datapackPaths = prefixPaths('datapacks/omegaflowey/', [
    'pack.mcmeta',
    ...prefixPaths('data/', [
      'aj',
      'animated_java/tags/function/global/on_load.json',
      'daylight_cycle',
      'minecraft',
      'omegaflowey/function/admin/',
      ...entityPaths,
      ...mainPaths,
      ...utilsPaths,
      'summit/',
      'summit.activity/',
      'summit.booth/',
    ]),
  ]);

  const pruneMarkdownFiles = async ({ compiledPath }) => {
    const mdGlob = `${compiledPath}/datapacks/**/*.md`;
    await rimraf(mdGlob, { glob: true });
  };
  postProcessors.push(pruneMarkdownFiles);

  const pruneAnimatedJavaDatapackExports = async ({ compiledPath }) => {
    const prunePromises = [];
    for (const dir of animatedJavaExportsToPrune) {
      const pruneFunctionDir = `${compiledPath}/datapacks/omegaflowey/data/aj/function/${dir}`;
      prunePromises.push(rimraf(pruneFunctionDir));
    }
    await Promise.all(prunePromises);
  };
  postProcessors.push(pruneAnimatedJavaDatapackExports);

  const pruneAnimatedJavaDatapackTags = async ({ compiledPath }) => {
    for (const [tagPath, suffix] of [
      [
        `${compiledPath}/datapacks/omegaflowey/data/animated_java/tags/function/global/on_load.json`,
        '/on_load',
      ],
    ]) {
      const loadTagJson = await readJson(tagPath);
      loadTagJson.values = loadTagJson.values.filter((modelTag) => {
        const namespace = modelTag.replace('aj:', '').replace(suffix, '');
        return !animatedJavaExportsToPrune.includes(namespace);
      });
      await writeJson(tagPath, loadTagJson);
    }
  };
  postProcessors.push(pruneAnimatedJavaDatapackTags);

  const pruneTickJson = async ({ compiledPath }) => {
    const path = `${compiledPath}/datapacks/omegaflowey/data/minecraft/tags/function/tick.json`;
    const tickTagJson = await readJson(path);
    tickTagJson.values = tickTagJson.values.filter(
      (functionLocation) => functionLocation !== 'omegaflowey:main/tick',
    );
    await writeJson(path, tickTagJson);
  };
  postProcessors.push(pruneTickJson);

  return { paths: datapackPaths, postProcessors };
};

const getSummitResourcepackPaths = () => {
  const postProcessors = [];
  const finalPostProcessors = [];

  // Not `minecraft/sounds.json` since we just use that to disable ambient sounds
  const minecraftPaths = prefixPaths('minecraft/', ['atlases']);

  const itemPaths = prefixPaths(
    'items/decorative/',
    suffixPaths(
      [
        'animated-java-logo',
        'flowey-build-scaled-min-2026',
        'legacy-command-blocks-scaled-min',
        'legacy-flowey-build-scaled-min',
        'legacy-hopper-clock-scaled-min',
        'reward-hat',
        'reward-hat-green',
        'reward-hat-magenta',
      ],
      '.json',
    ),
  );

  const modelPaths = prefixPaths('models/entity/decorative/', [
    'balloon_soul_red_summit_2026.json',
    'balloon_soul_trans.json',
    'housefly.json',
    ...prefixPaths('picture/', [
      'animated-java-logo.json',
      'flowey-build-scaled-min-2026.json',
      'legacy-command-blocks-scaled-min.json',
      'legacy-flowey-build-scaled-min.json',
      'legacy-hopper-clock-scaled-min.json',
    ]),
    'reward_hat.json',
    'reward_hat_green.json',
    'reward_hat_magenta.json',
  ]);

  const soundPaths = prefixPaths('sounds/', [
    ...suffixPaths(
      [
        'battle_start',
        'mus_f_6s_4',
        'mus_f_6s_5',
        'mus_f_alarm',
        'mus_f_intro',
        'mus_f_laugh',
        'mus_f_noise',
        'mus_f_part1',
        'mus_f_part2',
        'mus_f_saved',
        'mus_sfx_a_bullet',
        'mus_sfx_a_target',
        'mus_sfx_generate',
        'mus_sfx_segapower',
        'mus_sfx_yowl',
        'snd_battlefall',
        'snd_bombfall',
        'snd_bombsplosion',
        'snd_break1',
        'snd_break2',
        'snd_break2_c',
        'snd_buzzing',
        'snd_dumbvictory',
        'snd_elecdoor_open',
        'snd_elecdoor_close',
        'snd_elecdoor_shutheavy',
        'snd_escaped',
        'snd_flameloop',
        'snd_heal_c',
        'snd_hurt1_c',
        'snd_impact',
        'snd_item',
        'snd_noise',
        'snd_select',
        'snd_shakerbreaker',
        'snd_spearrise',
        'snd_swallow',
        'snd_wing',
      ],
      '.ogg',
    ),
  ]);

  // NOTE: this needs to be kept updated with the sounds we export above (`soundPaths`).
  // Do this by loading the build pack in Minecraft and checking the log for `File ... does not exist` warnings
  const pruneSoundsJson = async ({ compiledPath }) => {
    const pathSoundsJson = `${compiledPath}/assets/omega-flowey/sounds.json`;
    const soundsJson = await readJson(pathSoundsJson);

    const keysToPrune = [
      'ambient',
      'music.generic.boss-fight.repeat.0',
      'music.generic.boss-fight.repeat.1',
      'music.generic.boss-fight.end-note',
      'music.phase.repeat.0',
      'music.phase.repeat.1',
      'music.phase.repeat.end-note',
      'music.soul.0',
      'music.soul.1',
      'music.soul.2',
      'music.soul.5',
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
        'blank_3',
        'blank_4',
        'blank_5',
        'blank_6',
        'blank_7',
        'blank_8',
        'blank_9',
        'finger-gun-laser',
        'flamethrower_tip',
        'flowery',
        'friendliness-pellet-ring-blinking',
        'friendliness-pellet-ring-finished',
        'homing-vine',
        'homing-vine-noshade',
        'homing-vine-blinking-lane',
        'moss_block_1',
        'petes_fly',
      ],
      '.png',
    ),
    ...suffixPaths(
      [
        'friendliness-pellet-ring-blinking',
        'homing-vine-blinking-lane',
        'petes_fly',
      ],
      '.png.mcmeta',
    ),
  ]);

  const decorativeTexturePaths = prefixPaths('decorative/', [
    'tvscreen',
    ...suffixPaths(
      [
        'adahy',
        'balloon_rope_summit_2026',
        'grillbys-font',
        'lead_knot',
        'ruins-red-leaves',
        'soul_red_balloon',
        'sunflower_front_green',
        'sunflower_front_magenta',
        'theafroofdoom',
        'trns',
        ...prefixPaths('picture/', [
          'flowey-build-scaled-min-2026',
          'legacy-command-blocks-scaled-min',
          'legacy-flowey-build-scaled-min',
          'legacy-hopper-clock-scaled-min',
          'animated_java_2023_256x256',
        ]),
      ],
      '.png',
    ),
  ]);

  const pipeTexturePaths = prefixPaths('pipe/polished_andesite', [
    '.png',
    '_disabled.png',
    '_soul_3.png',
    '_soul_3.png.mcmeta',
    '_soul_4.png',
    '_soul_4.png.mcmeta',
    '_soul_5.png',
    '_soul_5.png.mcmeta',
  ]);

  const texturePaths = prefixPaths('textures/', [
    'stickers/',
    ...prefixPaths('custom/', [
      'arm_vine',
      ...attackTexturePaths,
      ...decorativeTexturePaths,
      'dentata_snake_ball',
      'font',
      'lower_eye',
      ...pipeTexturePaths,
      'soul',
      'tv_screen',
      'x_bullets_shared',
      'black.png',
      'intro_flashing_red.png',
      'intro_flashing_red.png.mcmeta',
      'white.png',
    ]),
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
    ...itemPaths,
    ...modelPaths,
    ...texturePaths,
    'sounds.json',
  ]);

  const assetsPaths = prefixPaths('assets/', [
    ...prefixPaths('aj/', [
      'items',
      'models',
      'textures/blueprint/omegaflowey_tv_screen',
    ]),
    ...minecraftPaths,
    ...omegaFloweyPaths,
  ]);

  const pruneAnimatedJavaResourcepackExports = async ({ compiledPath }) => {
    const prunePromises = [];
    for (const dir of animatedJavaExportsToPrune) {
      prunePromises.push(
        rimraf(`${compiledPath}/assets/aj/items/blueprint/${dir}`),
      );
      prunePromises.push(
        rimraf(`${compiledPath}/assets/aj/models/blueprint/${dir}`),
      );
    }
    await Promise.all(prunePromises);
  };
  postProcessors.push(pruneAnimatedJavaResourcepackExports);

  const resourcepackPaths = prefixPaths('resourcepack/', [
    'pack.mcmeta',
    'pack.png',
    ...assetsPaths,
  ]);

  const minifyJsons = async ({ compiledPath }) => {
    for (const path of await glob(`${compiledPath}/**/*.json`)) {
      await writeJson(path, await readJson(path));
    }
  };
  finalPostProcessors.push(minifyJsons);

  return { paths: resourcepackPaths, postProcessors, finalPostProcessors };
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

  const { paths, postProcessors, finalPostProcessors = [] } = compilePaths();
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

  const totalProcessors = postProcessors.length + finalPostProcessors.length;
  if (totalProcessors > 0) {
    info(`Running ${totalProcessors} post-processors`);
    await Promise.all(
      postProcessors.map((postProcessor) => postProcessor({ compiledPath })),
    );
    await Promise.all(
      finalPostProcessors.map((postProcessor) =>
        postProcessor({ compiledPath }),
      ),
    );
    info(`Finished post-processing ${checkmark}`);
  }

  await zip(`${compiledPath}/datapacks/omegaflowey`, `${compiledPath}.zip`);
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
