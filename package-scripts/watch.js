const chalk = require('chalk');
const { watch } = require('chokidar');
const dotenv = require('dotenv');
const { copy, readFile, writeFile } = require('fs-extra');
const { glob } = require('glob');
const { difference, findKey } = require('lodash');
const { parse, relative } = require('path');
const { rimraf } = require('rimraf');

const { ajblueprintDir } = require('./shared-consts');
const {
  assertEnvironmentVariables,
  parseLastExportedHashes,
  updateLastExportedHashes,
} = require('./utils');

dotenv.config();
assertEnvironmentVariables([
  'COPY_COMMAND_ALIASES',
  'MINECRAFT_PATH',
  'RESOURCEPACK_NAME',
  'WORLD_NAME',
]);
const copyCommandAliases = Boolean(process.env.COPY_COMMAND_ALIASES);
const minecraftPath = process.env.MINECRAFT_PATH;
const resourcePackName = process.env.RESOURCEPACK_NAME;
const worldName = process.env.WORLD_NAME;

const worldPath =
  process.env.WATCH_WORLD_PATH ?? `${minecraftPath}/saves/${worldName}`;
const resourcePackBasePath = `${minecraftPath}/resourcepacks/${resourcePackName}`;
const regexDotFiles = /(^|[/\\])\../;

const awaitWriteFinish = {
  stabilityThreshold: 200,
  pollInterval: 100,
};

/** Converts a path's `\` to `/` */
const normalizePath = (path) => path.replaceAll('\\', '/');

const watchDatapacks = async (showVerbose) => {
  const log = (...args) => {
    const prefix = chalk.bgBlue(chalk.bold('[datapacks]'));
    console.log(prefix, ...args);
  };
  const logPath = (prefix, path) => {
    if (!isSilenced(path) || showVerbose) {
      log(prefix, path);
    }
  };

  log(`path: ${worldPath}/datapacks`);

  const ignored = [
    regexDotFiles,
    /.*\.md$/,
    /^datapacks[/\\]animated_java[/\\]data\.ajmeta$/,
  ];
  /** silenced files are still watched, but aren't logged */
  const silenced = [/^datapacks[/\\]animated_java/];
  const isSilenced = (path) => silenced.some((pattern) => pattern.test(path));
  const copyFilter = (path) => ignored.every((regex) => !regex.test(path));

  // Clean copy datapacks on script start
  await rimraf(`${worldPath}/datapacks`);
  await copy('datapacks', `${worldPath}/datapacks`, { filter: copyFilter });

  const watcher = watch('datapacks', {
    awaitWriteFinish,
    ignored,
    ignoreInitial: true,
  });

  watcher.on('ready', async () => {
    log('initialized');
  });
  watcher.on('add', async (path) => {
    await copy(path, `${worldPath}/${path}`);
    logPath(chalk.green('add:'), normalizePath(path));
  });
  watcher.on('change', async (path) => {
    await copy(path, `${worldPath}/${path}`);
    logPath(chalk.yellow('change:'), normalizePath(path));
  });
  watcher.on('unlink', async (path) => {
    await rimraf(`${worldPath}/${path}`);
    logPath(chalk.red('delete:'), normalizePath(path));
  });
};

const watchResourcepack = async (showVerbose) => {
  const log = (...args) => {
    const prefix = chalk.bgMagenta(chalk.bold('[resourcepack]'));
    console.log(prefix, ...args);
  };
  const logPath = (prefix, path) => {
    if (!isSilenced(path) || showVerbose) {
      log(prefix, path);
    }
  };

  const ignored = [
    regexDotFiles,
    /^resourcepack[/\\]assets[/\\]omega-flowey[/\\]models[/\\]last_exported_hashes\.json$/,
    /^resourcepack[/\\]assets\.ajmeta$/,
    /\.ajblueprint$/,
    /\.pdn$/,
  ];
  /** silenced files are still watched, but aren't logged */
  const silenced = [
    /^resourcepack[/\\]assets[/\\]animated_java/,
    /^resourcepack[/\\]assets[/\\]minecraft[/\\]models[/\\]item[/\\]pink_dye\.json$/,
  ];
  const isSilenced = (path) => silenced.some((pattern) => pattern.test(path));
  const copyFilter = (path) => ignored.every((regex) => !regex.test(path));

  // Delete all contents of resourcepack folder on script start
  await rimraf(resourcePackBasePath);
  await copy('resourcepack', resourcePackBasePath, { filter: copyFilter });

  const watcher = watch('resourcepack', {
    awaitWriteFinish,
    ignored,
    ignoreInitial: true,
  });

  watcher.on('ready', async () => {
    log('initialized');
  });
  const dest = (path) =>
    `${resourcePackBasePath}/${path.replace(/^resourcepack[/\\]/, '')}`;
  watcher.on('add', async (path) => {
    await copy(path, dest(path));
    logPath(chalk.green('add:'), normalizePath(path));
  });
  watcher.on('change', async (path) => {
    await copy(path, dest(path));
    logPath(chalk.yellow('change:'), normalizePath(path));
  });
  watcher.on('unlink', async (path) => {
    await rimraf(dest(path));
    logPath(chalk.red('delete:'), normalizePath(path));
  });
};

const watchCommandAliases = async () => {
  const log = (...args) => {
    const prefix = chalk.bgYellow(chalk.bold('[commandaliases]'));
    console.log(prefix, ...args);
  };
  const logPath = (prefix, path) => {
    log(prefix, normalizePath(path));
  };

  const rootFrom = 'commandaliases';
  const rootTo = `${minecraftPath}/config/commandaliases`;
  log(`path: ${rootTo}`);

  // Clean copy on script start
  await rimraf(rootTo);
  await copy(rootFrom, rootTo);

  const watcher = watch(rootFrom, {
    awaitWriteFinish,
    ignoreInitial: true,
  });

  watcher.on('ready', async () => {
    log('initialized');
  });
  watcher.on('add', async (path) => {
    const relativePath = relative(rootFrom, path);
    await copy(path, `${rootTo}/${relativePath}`);
    logPath(chalk.green('add:'), path);
  });
  watcher.on('change', async (path) => {
    const relativePath = relative(rootFrom, path);
    await copy(path, `${rootTo}/${relativePath}`);
    logPath(chalk.yellow('change:'), path);
  });
  watcher.on('unlink', async (path) => {
    const relativePath = relative(rootFrom, path);
    await rimraf(`${rootTo}/${relativePath}`);
    logPath(chalk.red('delete:'), path);
  });
};

/** Deletes the exported AJ files associated with the input `.ajblueprint` file path */
const deleteExportedFiles = async (path) => {
  // We have to match the model's info from `last_exported_hashes` since
  // we can't parse the (non-existent) file anymore
  const lastExported = parseLastExportedHashes(ajblueprintDir);
  const uuid = findKey(lastExported, (modelInfo) =>
    modelInfo.path.endsWith(path.replaceAll('\\', '/')),
  );
  const { name } = lastExported[uuid];

  const pathsToDeleteEntirely = [
    // datapacks things
    `datapacks/animated_java/data/animated_java/functions/${name}`,
    `datapacks/animated_java/data/animated_java/tags/functions/${name}`,
    // resourcepack things
    `resourcepack/assets/animated_java/models/item/${name}`,
  ];
  for (const path of pathsToDeleteEntirely) {
    rimraf(path);
    if (!path.startsWith('datapacks')) {
      rimraf(`${resourcePackBasePath}/${path.replace('resourcepack/', '')}`);
    }
  }

  const deleteFromValues = async (path) => {
    const json = JSON.parse(await readFile(path, 'utf8'));
    json.values = json.values.filter(
      (value) => !value.startsWith(`animated_java:${name}/zzzzzzzz/`),
    );
    await writeFile(path, JSON.stringify(json, null, 2));
  };
  const functionListPaths = [
    'datapacks/animated_java/data/minecraft/tags/function/load.json',
  ];
  for (const path of functionListPaths) {
    await deleteFromValues(path);
  }

  // const datapackAjmetaPath = 'datapacks/animated_java/datapack.ajmeta';
  // const datapackAjmeta = JSON.parse(await readFile(datapackAjmetaPath, 'utf8'));
  // datapackAjmeta.projects[uuid] = undefined;
  // const content = JSON.stringify(datapackAjmeta, null, 2);
  // await writeFile(datapackAjmetaPath, content);

  lastExported[uuid] = undefined;
  updateLastExportedHashes(ajblueprintDir, lastExported);
};

/**
 * Gets the list of the current `.ajblueprint`s, the list of exported files (the cache; `last_exported_hashes.json`),
 * and deletes entries found in the cache whose corresponding `.ajblueprint` files were not found
 */
const deleteStaleExportFiles = async () => {
  const log = (...args) => {
    const prefix = chalk.bgYellow(chalk.bold('[initializing]'));
    console.log(prefix, ...args);
  };

  const ajblueprints = await glob(`${ajblueprintDir}/**/*.ajblueprint`);
  const lastExported = Object.values(parseLastExportedHashes(ajblueprintDir));
  const validExportedModels = lastExported.filter(({ path }) =>
    ajblueprints.some((ajblueprintPath) =>
      path.endsWith(ajblueprintPath.replaceAll('\\', '/')),
    ),
  );
  const staleExportedModels = difference(lastExported, validExportedModels);
  if (staleExportedModels.length > 0) {
    const modelNames = staleExportedModels.map(({ path }) => parse(path).name);
    log('deleting stale export files for:', modelNames);
    await Promise.all(
      staleExportedModels.map(({ path }) => deleteExportedFiles(path)),
    );
  }
};

const main = async () => {
  await deleteStaleExportFiles();

  const SHOW_VERBOSE = false;
  watchDatapacks(SHOW_VERBOSE);
  watchResourcepack(SHOW_VERBOSE);
  if (copyCommandAliases) {
    watchCommandAliases(SHOW_VERBOSE);
  }
};

main();
