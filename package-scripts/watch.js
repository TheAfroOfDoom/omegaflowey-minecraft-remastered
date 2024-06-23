const chalk = require('chalk');
const { watch } = require('chokidar');
const dotenv = require('dotenv');
const findProcess = require('find-process');
const { copy, remove, readFile, writeFile } = require('fs-extra');
const { glob } = require('glob');
const { difference, findKey, uniq } = require('lodash');
const minimist = require('minimist');
const { spawn } = require('node:child_process');
const { resolve, parse } = require('path');

const {
  ajExporterPassthroughFlagEnd: flagEnd,
  ajExporterPassthroughFlagStart: flagStart,
  ajmodelDir,
  ajmodelPathsDontOpenSuffix,
} = require('./shared-consts');
const {
  assertEnvironmentVariables,
  hash,
  parseLastExportedHashes,
  updateLastExportedHashes,
} = require('./utils');

dotenv.config();
assertEnvironmentVariables([
  'MINECRAFT_PATH',
  'RESOURCEPACK_NAME',
  'WORLD_NAME',
]);
const minecraftPath = process.env.MINECRAFT_PATH;
const resourcePackName = process.env.RESOURCEPACK_NAME;
const worldName = process.env.WORLD_NAME;

const worldPath = `${minecraftPath}/saves/${worldName}`;
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

  const ignored = [
    regexDotFiles,
    /.*\.md$/,
    /^datapacks[/\\]animated_java[/\\]datapack\.ajmeta$/,
  ];
  /** silenced files are still watched, but aren't logged */
  const silenced = [/^datapacks[/\\]animated_java/];
  const isSilenced = (path) => silenced.some((pattern) => pattern.test(path));
  const copyFilter = (path) => ignored.every((regex) => !regex.test(path));

  // Clean copy datapacks on script start
  await remove(`${worldPath}/datapacks`);
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
    await remove(`${worldPath}/${path}`);
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
    /^resourcepack[/\\]resourcepack\.ajmeta$/,
    /\.ajblueprint$/,
    /\.ajmodel$/,
    /\.pdn$/,
  ];
  /** silenced files are still watched, but aren't logged */
  const silenced = [
    /^resourcepack[/\\]assets[/\\]animated_java/,
    /^resourcepack[/\\]assets[/\\]minecraft[/\\]models[/\\]item[/\\]animated_java_empty\.json$/,
    /^resourcepack[/\\]assets[/\\]minecraft[/\\]models[/\\]item[/\\]white_dye\.json$/,
  ];
  const isSilenced = (path) => silenced.some((pattern) => pattern.test(path));
  const copyFilter = (path) => ignored.every((regex) => !regex.test(path));

  // Delete all contents of resourcepack folder on script start
  await remove(resourcePackBasePath);
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
    await remove(dest(path));
    logPath(chalk.red('delete:'), normalizePath(path));
  });
};

/** Deletes the exported AJ files associated with the input `.ajmodel` file path */
const deleteExportedFiles = async (path) => {
  // We have to match the model's info from `last_exported_hashes` since
  // we can't parse the (non-existent) file anymore
  const lastExported = parseLastExportedHashes(ajmodelDir);
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
    remove(path);
    if (!path.startsWith('datapacks')) {
      remove(`${resourcePackBasePath}/${path.replace('resourcepack/', '')}`);
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
  updateLastExportedHashes(ajmodelDir, lastExported);
};

const bbCLIProcessExists = async () =>
  typeof (await findBBCLIProcess()) !== 'undefined';

const findBBCLIProcess = async () =>
  await findProcess('name', /blockbench/i).then((list) =>
    list.find(({ cmd }) => cmd.includes('--script=')),
  );

const vanillaBlockbenchProcessExists = async () =>
  typeof (await findVanillaBlockbenchProcess()) !== 'undefined';

const findVanillaBlockbenchProcess = async () =>
  await findProcess('name', /blockbench/i).then((list) =>
    list.find(({ cmd }) => !cmd.includes('--script=')),
  );

const watchModels = async () => {
  const log = (...args) => {
    const prefix = chalk.bgGreen(chalk.bold('[models]'));
    console.log(prefix, ...args);
  };
  const exporterLog = (...args) => {
    const prefix = chalk.magenta('exporter:');
    log(prefix, ...args);
  };

  if (await vanillaBlockbenchProcessExists()) {
    log(
      'vanilla blockbench process already running --',
      chalk.red('not watching models'),
    );
    return;
  }

  const parseModel = async (path) => {
    const modelString = await readFile(path, 'utf-8');
    const model = JSON.parse(modelString);
    const { uuid } = model.meta;
    const name = model.animated_java.settings.project_namespace;
    return {
      model,
      name,
      modelString,
      uuid,
    };
  };

  /**
   * Only export project if hash of model file is different than that found
   * in `last_exported_hashes.json`
   */
  const shouldExport = async (path) => {
    const lastExported = parseLastExportedHashes(ajmodelDir);
    const { modelString, uuid } = await parseModel(path);
    const currentHash = await hash(modelString);
    return lastExported[uuid]?.hash !== currentHash;
  };

  let lastExportQueuePolledLength;
  let exportQueue = [];
  let intervalId;
  const addToExportQueue = async (path) => {
    exportQueue.push(path);
    // If the BB-CLI process is not already running, start polling for
    // (no) changes to the export queue after 0.5s before starting a new
    // process to run the auto-exporter
    const processExists = await bbCLIProcessExists();
    if (typeof intervalId === 'undefined' && !processExists) {
      intervalId = setInterval(() => {
        if (lastExportQueuePolledLength === exportQueue.length) {
          runModelExporter();
          lastExportQueuePolledLength = undefined;
          clearInterval(intervalId);
          intervalId = undefined;
        } else {
          lastExportQueuePolledLength = exportQueue.length;
        }
      }, 500);
    }
  };

  const maybeRerunExporter = async () => {
    if (exportQueue.length === 0) {
      return;
    }

    const processExists = await bbCLIProcessExists();
    if (!processExists) {
      runModelExporter();
    } else {
      // Check to see if the bbcli process has ended every 1s
      const check = async () => {
        if (await bbCLIProcessExists()) {
          setTimeout(check, 1000);
        } else {
          runModelExporter();
        }
      };
      setTimeout(check, 1000);
    }
  };

  const runModelExporter = async () => {
    const modelPaths = uniq(exportQueue)
      .map((path) => resolve(path))
      .sort();
    exportQueue = [];
    exporterLog('starting auto export script (`yarn start export`)');
    const vanillaProcessExists = await vanillaBlockbenchProcessExists();
    if (vanillaProcessExists) {
      exporterLog(
        'found vanilla blockbench process --',
        chalk.yellow('unable to output blockbench logs'),
      );
    }
    exporterLog(
      'models to export:',
      modelPaths.map((path) => parse(path).name).sort(),
    );

    const modelPathsDontOpenFileHack = modelPaths.map(
      (path) => `${path}${ajmodelPathsDontOpenSuffix}`,
    );
    const modelPathsArg = modelPathsDontOpenFileHack.join(',');

    const controller = new AbortController();
    const exportProcess = spawn(
      'yarn',
      ['start', `"export.run --ajexport-models=${modelPathsArg}"`],
      {
        shell: true,
        signal: controller.signal,
      },
    );
    const errorPrefix = 'Error:';

    const processLog = (data) => {
      if (data.includes(flagStart)) {
        const dataNoStartFlag = data.toString().split(`${flagStart} `)[1];
        const dataNoEndFlag = dataNoStartFlag.split(` ${flagEnd}`)[0];
        const prefix = chalk.blue('blockbench:');

        if (dataNoEndFlag.startsWith(errorPrefix)) {
          exporterLog(
            prefix,
            chalk.red(errorPrefix),
            dataNoEndFlag.slice(errorPrefix.length + 1),
          );
          controller.abort();
        } else {
          exporterLog(prefix, dataNoEndFlag);
        }
      }
    };
    exportProcess.stderr.on('data', processLog);
    exportProcess.on('error', () => {});
    exportProcess.on('close', (code) => {
      if (code === null) {
        exporterLog('received error mid process -- aborting ');
      } else {
        if (!vanillaProcessExists) {
          exporterLog('finished auto export script');
        }
        maybeRerunExporter();
      }
    });
  };

  const ignored = [
    regexDotFiles,
    /.*_dev\.ajmodel$/,
    /last_exported_hashes\.json$/,
  ];
  const awaitWriteFinish = {
    stabilityThreshold: 50,
    pollInterval: 50,
  };
  const watcher = watch(ajmodelDir, { awaitWriteFinish, ignored });

  /** Converts a path's `\` to `/` and removes the `ajmodelDir` prefix */
  const formatPath = (path) =>
    normalizePath(path).replace(`${ajmodelDir}/`, '');

  watcher.on('ready', () => {
    log('initialized');
  });
  watcher.on('add', async (path) => {
    if (await shouldExport(path)) {
      addToExportQueue(path);
    }
    const formattedPath = formatPath(path);
    log(chalk.green('add:'), formattedPath);
  });
  watcher.on('change', async (path) => {
    if (await shouldExport(path)) {
      addToExportQueue(path);
    }
    const formattedPath = formatPath(path);
    log(chalk.yellow('change:'), formattedPath);
  });
  watcher.on('unlink', async (path) => {
    await deleteExportedFiles(path);
    const formattedPath = formatPath(path);
    log(chalk.red('delete:'), formattedPath);
  });
};

/**
 * Gets the list of the current `.ajmodel`s, the list of exported files (the cache; `last_exported_hashes.json`),
 * and deletes entries found in the cache whose corresponding `.ajmodel` files were not found
 */
const deleteStaleExportFiles = async () => {
  const log = (...args) => {
    const prefix = chalk.bgYellow(chalk.bold('[initializing]'));
    console.log(prefix, ...args);
  };

  const ajmodels = await glob(`${ajmodelDir}/**/*.ajmodel`);
  const lastExported = Object.values(parseLastExportedHashes(ajmodelDir));
  const validExportedModels = lastExported.filter(({ path }) =>
    ajmodels.some((ajmodelPath) =>
      path.endsWith(ajmodelPath.replaceAll('\\', '/')),
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
  const argv = minimist(process.argv.slice(2));

  await deleteStaleExportFiles();

  const SHOW_VERBOSE = false;
  watchDatapacks(SHOW_VERBOSE);
  watchResourcepack(SHOW_VERBOSE);
  if (argv.experimental) {
    watchModels();
  }
};

main();
