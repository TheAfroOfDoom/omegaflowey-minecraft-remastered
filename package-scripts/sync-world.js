const archiver = require('archiver');
const chalk = require('chalk');
const dotenv = require('dotenv');
const extract = require('extract-zip');
const { createWriteStream, stat, mkdir, exists } = require('fs-extra');
const { glob } = require('glob');
const minimist = require('minimist');
const { rimraf } = require('rimraf');

const { assertEnvironmentVariables } = require('./utils');

dotenv.config();

assertEnvironmentVariables(['MINECRAFT_PATH', 'WORLD_NAME']);

const tempBackupPath = './tmp/world-backups';

const backupWorld = async (options) =>
  new Promise((resolve, reject) => {
    const { backupPath, worldPath, useColor = true } = options;
    const output = createWriteStream(backupPath);
    const archive = archiver('zip');

    archive.on('error', function (err) {
      if (err.code === 'EBUSY') {
        throw new Error(
          'Minecraft world is currently open; you must close it before backing up the world (Save and Quit to Title)',
        );
      } else {
        console.log('Unhandled error while backing up the world:');
        reject(err);
      }
    });

    output.on('close', function () {
      const prefix = 'Finished world backup to:';
      const prefixFormatted = useColor ? chalk.greenBright(prefix) : prefix;
      const destFormatted = chalk.blueBright(backupPath);
      console.log(prefixFormatted, destFormatted);
      resolve();
    });

    archive.pipe(output);
    archive.directory(worldPath, false);
    archive.finalize();
  });

const deleteOldBackups = async () => {
  // 1 week = stale
  // https://stackoverflow.com/a/48821439/13789724
  const STALE_DURATION = 604800000;
  const tempBackups = await glob(`${tempBackupPath}/**`).then((paths) =>
    paths.filter((path) => path.endsWith('.zip')),
  );

  for (const tempBackupPath of tempBackups) {
    const modifiedTime = (await stat(tempBackupPath)).mtime;
    if (Date.now() - modifiedTime > STALE_DURATION) {
      console.log('Deleting stale backup:', tempBackupPath);
      await rimraf(tempBackupPath);
    }
  }
};

/** Backup name will be the minecraft save directory's last modified date */
const createTempWorldBackupName = async (options) => {
  const modifiedTime = (await stat(options.worldPath)).mtime;
  const formattedTime = modifiedTime.toISOString().replaceAll(':', '.');
  return `world-${formattedTime}.zip`;
};

const syncUp = async (options) => {
  await rimraf(options.backupPath);
  await backupWorld(options);
};

const syncDown = async (options) => {
  const { backupPath, worldPath } = options;
  // Create tmp/world-backups folder if it doesn't exist
  if (!(await exists(tempBackupPath))) {
    await mkdir(tempBackupPath, { recursive: true });
  }

  await deleteOldBackups();

  /** We can only temp backup the current world if it already exists */
  if (await exists(worldPath)) {
    console.log('Backing up your current world as a precautionary measure...');
    const name = await createTempWorldBackupName();
    const path = `${tempBackupPath}/${name}`;
    await backupWorld({ ...options, backupPath: path, useColor: false });

    await rimraf(worldPath);
  } else {
    console.log(
      'No pre-existing world save to backup, moving straight to extraction',
    );
  }

  console.log('Extracting world backup to client saves directory...');
  await extract(backupPath, { dir: worldPath });

  const srcFormatted = chalk.blueBright(backupPath);
  const destFormatted = chalk.blueBright(worldPath);
  const successMessage = chalk.greenBright(
    `Extracted ${srcFormatted} to ${destFormatted}`,
  );
  console.log(successMessage);
};

const validateOptions = (options) => {
  const { backupPath, worldPath } = options;

  if (typeof backupPath !== 'string') {
    throw new Error(`Invalid \`backupPath\` arg specified: ${backupPath}`);
  }

  if (typeof worldPath !== 'string') {
    throw new Error(`Invalid \`worldPath\` arg specified: ${worldPath}`);
  }
};

const main = async () => {
  const { up, down, ...options } = minimist(process.argv.slice(2), {
    alias: {
      'backup-path': 'backupPath',
      'world-path': 'worldPath',
    },
  });
  validateOptions(options);

  if (up) {
    await syncUp(options);
  } else if (down) {
    await syncDown(options);
  } else {
    throw new Error('Must provide either `--up` or `--down` argument');
  }
};

main();
