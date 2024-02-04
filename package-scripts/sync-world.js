const archiver = require('archiver');
const dotenv = require('dotenv');
const { createWriteStream, remove } = require('fs-extra');
const minimist = require('minimist');

const { assertEnvironmentVariables } = require('./utils');

dotenv.config();

assertEnvironmentVariables(['MINECRAFT_PATH', 'WORLD_NAME']);

const minecraftPath = process.env.MINECRAFT_PATH;
const worldName = process.env.WORLD_NAME;

const minecraftWorldPath = `${minecraftPath}/saves/${worldName}`;

const syncUp = async () => {
  await remove('./world.zip');
  return new Promise((resolve, reject) => {
    const output = createWriteStream('./world.zip');
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
      console.log('Finished world backup');
      resolve();
    });

    archive.pipe(output);
    archive.directory(minecraftWorldPath, false);
    archive.finalize();
  });
};

const syncDown = async () => {
  throw new Error('Unimplemented');
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
