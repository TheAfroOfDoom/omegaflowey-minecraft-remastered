const chalk = require('chalk');
const { copy, emptyDir, pathExists, readJson, writeJson } = require('fs-extra');
const { glob } = require('glob');
const parseArgs = require('minimist');
const { rimraf } = require('rimraf');

const buildDir = './build';

const prefixPaths = (prefix, paths) => paths.map((path) => `${prefix}${path}`);
const suffixPaths = (paths, suffix) => paths.map((path) => `${path}${suffix}`);

const animatedJavaExportsToPrune = prefixPaths('omegaflowey_', [
  'housefly',
  'petal_pipe_circle',
  'petal_pipe_middle',
  'soul_0_bandaid',
  'soul_0_sword',
  'venus_fly_trap',
]);

const getSummitDatapackPaths = () => {
  const postProcessors = [];

  const attackPaths = prefixPaths('attack/', [
    'bomb',
    'dentata-snakes',
    'finger-guns',
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
    'death',
    'interacted',
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
    'damage',
    'damage.mcfunction',
    'face_closest_player_macro.mcfunction',
    'face_closest_player.mcfunction',
    'move_directional.mcfunction',
    'move_forward.mcfunction',
    'shake_screen_macro.mcfunction',
    'shake_screen.mcfunction',
  ]);

  const advancementPaths = prefixPaths(
    'advancement/player_interacted_with_',
    suffixPaths(
      [
        'animated_java_link',
        'back_cave_github_link',
        'feedback_form_link',
        'github_description',
        'join_queue',
        'join_queue_2',
        'soul_act_button_locator',
      ],
      '.json',
    ),
  );

  const entityPaths = prefixPaths('omegaflowey.entity/', [
    ...advancementPaths,
    ...prefixPaths('function/', [
      ...bossFightPaths,
      'decorative',
      'directorial/tick.mcfunction',
      ...hostilePaths,
      ...playerPaths,
      'remove_animated_java_models',
      'shared',
      ...soulPaths,
      ...entityUtilsPaths,
      'remove_animated_java_models.mcfunction',
      'reset_scores.mcfunction',
      'setup.mcfunction',
      'tick.mcfunction',
    ]),
  ]);

  const utilsPaths = prefixPaths('omegaflowey.utils/function/', [
    'error.mcfunction',
    'math/max.mcfunction',
    'math/min.mcfunction',
    'log',
    'log.mcfunction',
  ]);

  const primaryDatapackPaths = prefixPaths('omegaflowey/', [
    'pack.mcmeta',
    ...prefixPaths('data/', [
      'animated_java/tags/function/',
      'daylight_cycle',
      'minecraft',
      'omegaflowey.admin/function/',
      ...entityPaths,
      'omegaflowey.main/function/',
      'omegaflowey.main/tags/',
      ...utilsPaths,
      'summit/',
    ]),
  ]);
  const removeResetFunction = async ({ compiledPath }) => {
    const resetFunctionFile = `${compiledPath}/datapacks/omegaflowey/data/omegaflowey.main/function/reset.mcfunction`;
    await rimraf(resetFunctionFile);
  };
  postProcessors.push(removeResetFunction);

  const datapackPaths = prefixPaths('datapacks/', [
    'animated_java/data',
    'animated_java/pack.mcmeta',
    'gu',
    ...primaryDatapackPaths,
  ]);

  const pruneMarkdownFiles = async ({ compiledPath }) => {
    const mdGlob = `${compiledPath}/datapacks/**/*.md`;
    await rimraf(mdGlob, { glob: true });
  };
  postProcessors.push(pruneMarkdownFiles);

  const pruneAnimatedJavaDatapackExports = async ({ compiledPath }) => {
    const prunePromises = [];
    for (const dir of animatedJavaExportsToPrune) {
      const pruneFunctionDir = `${compiledPath}/datapacks/animated_java/data/animated_java/function/${dir}`;
      prunePromises.push(rimraf(pruneFunctionDir));
      prunePromises.push(
        rimraf(
          `${compiledPath}/datapacks/animated_java/data/animated_java/tags/function/${dir}`,
        ),
      );
    }
    await Promise.all(prunePromises);
  };
  postProcessors.push(pruneAnimatedJavaDatapackExports);

  const pruneAnimatedJavaDatapackTags = async ({ compiledPath }) => {
    for (const [tagPath, suffix] of [
      [
        `${compiledPath}/datapacks/animated_java/data/animated_java/tags/function/global/on_load.json`,
        '/on_load',
      ],
      [
        `${compiledPath}/datapacks/animated_java/data/animated_java/tags/function/global/root/on_load.json`,
        '/root/on_load',
      ],
      [
        `${compiledPath}/datapacks/animated_java/data/animated_java/tags/function/global/root/on_tick.json`,
        '/root/on_tick',
      ],
    ]) {
      const loadTagJson = await readJson(tagPath);
      loadTagJson.values = loadTagJson.values.filter((modelTag) => {
        const namespace = modelTag
          .replace('animated_java:', '')
          .replace(suffix, '');
        return !animatedJavaExportsToPrune.includes(namespace);
      });
      await writeJson(tagPath, loadTagJson);
    }
  };
  postProcessors.push(pruneAnimatedJavaDatapackTags);
  return { paths: datapackPaths, postProcessors };
};

const getSummitResourcepackPaths = () => {
  const postProcessors = [];
  const finalPostProcessors = [];

  // Not `minecraft/sounds.json` since we just use that to disable ambient sounds
  const minecraftPaths = prefixPaths('minecraft/', ['atlases', 'models']);

  const pruneAnimatedJavaDisplayItem = async ({ compiledPath }) => {
    const displayItemPath = `${compiledPath}/assets/minecraft/models/item/pink_dye.json`;
    const displayItemJson = await readJson(displayItemPath);

    const filteredOverrides = displayItemJson.overrides.filter((override) => {
      if (!override.model.startsWith('animated_java:item/')) {
        return true;
      }

      const modelName = override.model
        .replace('animated_java:item/', '')
        .split('/')[0];
      return !animatedJavaExportsToPrune.includes(modelName);
    });

    displayItemJson.overrides = filteredOverrides;

    displayItemJson.animated_java = undefined;

    await writeJson(displayItemPath, displayItemJson, { spaces: 2 });
  };
  postProcessors.push(pruneAnimatedJavaDisplayItem);

  const modelPaths = prefixPaths('models/entity/decorative/', [
    'housefly.json',
    'picture',
    'reward_hat.json',
    'reward_hat_cyan.json',
  ]);

  const soundPaths = prefixPaths(
    'sounds/',
    suffixPaths(
      [
        'battle_start',
        'mus_f_6s_6',
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
        'snd_dumbvictory',
        'snd_elecdoor_shutheavy',
        'snd_escaped',
        'snd_heal_c',
        'snd_hurt1_c',
        'snd_impact',
        'snd_item',
        'snd_noise',
        'snd_select',
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
        'homing_vine_orange_shulker_box_emissive',
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
    ...suffixPaths(
      [
        'adahy',
        'gulag-kamina-cape',
        'natia',
        'sunflower_front_cyan_noshade',
        'sunflower_front_noshade',
        'theafroofdoom',
        ...prefixPaths('picture/', [
          ...suffixPaths(
            [
              'flowey-build',
              'legacy-command-blocks',
              'legacy-flowey-build',
              'legacy-hopper-clock',
            ],
            '-scaled-min',
          ),
          'animated_java_2023_256x256',
        ]),
      ],
      '.png',
    ),
  ]);

  const pipeTexturePaths = prefixPaths('pipe/polished_andesite', [
    '.png',
    '_disabled.png',
    '_soul_0.png',
    '_soul_0.png.mcmeta',
    '_soul_1.png',
    '_soul_1.png.mcmeta',
  ]);

  const texturePaths = prefixPaths('textures/custom/', [
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
    ...modelPaths,
    ...texturePaths,
    'sounds.json',
  ]);

  const assetsPaths = prefixPaths('assets/', [
    'animated_java',
    ...minecraftPaths,
    ...omegaFloweyPaths,
  ]);

  const pruneAnimatedJavaResourcepackExports = async ({ compiledPath }) => {
    const prunePromises = [];
    for (const dir of animatedJavaExportsToPrune) {
      const compiledPruneDir = `${compiledPath}/assets/animated_java/models/item/${dir}`;
      prunePromises.push(rimraf(compiledPruneDir));
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
