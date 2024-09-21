const chalk = require('chalk');
const sizeOf = require('image-size');

const applicableExtensions = ['.png'];
const exclude = /scratch\//;

/**
 * If a texture's dimensions aren't minimum powers of 16, Minecraft outputs a warning
 * on resourcepack reload (F3 + T) relating to its mip level being limited.
 * e.g.: `Texture animated_java:item/black with size 1x1 limits mip level from 4 to 0`
 */
const correctTextureDimensions = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }
  // Return early if file matches exclude pattern
  if (exclude.test(file.replaceAll('\\', '/'))) {
    return [];
  }

  const errors = [];

  const { width, height } = sizeOf(file);

  const errorTemplate = (dimension, actualValue) =>
    `image ${dimension} must be divisible by 16 (was ${actualValue})`;

  if (width % 16 !== 0) {
    errors.push(errorTemplate('width', chalk.yellowBright(width)));
  }
  if (height % 16 !== 0) {
    errors.push(errorTemplate('height', chalk.yellowBright(height)));
  }

  return errors;
};

module.exports = {
  function: correctTextureDimensions,
};
