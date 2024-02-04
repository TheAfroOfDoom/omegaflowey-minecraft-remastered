const archiver = require('archiver');
const chalk = require('chalk');
const dotenv = require('dotenv');
const extract = require('extract-zip');
const { createWriteStream, remove, stat, mkdir, exists } = require('fs-extra');
const minimist = require('minimist');

const { assertEnvironmentVariables } = require('./utils');

dotenv.config();

assertEnvironmentVariables(['MINECRAFT_PATH', 'WORLD_NAME']);

const minecraftPath = process.env.MINECRAFT_PATH;
const worldName = process.env.WORLD_NAME;

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;
const worldBackupPath = './world.zip';
const tempBackupPath = './tmp/world-backups';

const backupWorld = async (dest, useColor = true) =>
  new Promise((resolve, reject) => {
    const output = createWriteStream(dest);
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
      const destFormatted = chalk.blueBright(dest);
      console.log(prefixFormatted, destFormatted);
      resolve();
    });

    archive.pipe(output);
    archive.directory(minecraftWorldPath, false);
    archive.finalize();
  });

/** Backup name will be the minecraft save directory's last modified date */
const createTempWorldBackupName = async () => {
  const modifiedTime = (await stat(minecraftWorldPath)).mtime;
  const formattedTime = modifiedTime.toISOString().replaceAll(':', '.');
  return `world-${formattedTime}.zip`;
};

const syncUp = async () => {
  await remove(worldBackupPath);
  await backupWorld(worldBackupPath);
};

const syncDown = async () => {
  // Create tmp/world-backups folder if it doesn't exist
  if (!(await exists(tempBackupPath))) {
    await mkdir(tempBackupPath, { recursive: true });
  }

  console.log('Backing up your current world as a precautionary measure...');
  const name = await createTempWorldBackupName();
  const path = `${tempBackupPath}/${name}`;
  await backupWorld(path, false);

  await remove(minecraftWorldPath);
  await extract(worldBackupPath, { dir: minecraftWorldPath });

  const srcFormatted = chalk.blueBright(worldBackupPath);
  const destFormatted = chalk.blueBright(minecraftWorldPath);
  const successMessage = chalk.greenBright(
    `Extracted ${srcFormatted} to ${destFormatted}`,
  );
  console.log(successMessage);
};

const main = async () => {
  const { up, down } = minimist(process.argv.slice(2));

  if (up) {
    await syncUp();
  } else if (down) {
    await syncDown();
  } else {
    throw new Error('Must provide either `--up` or `--down` argument');
  }
};

main();
