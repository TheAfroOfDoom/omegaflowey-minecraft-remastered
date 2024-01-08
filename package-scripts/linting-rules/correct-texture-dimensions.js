const sizeOf = require('image-size');

const name = 'correct-image-dimensions';
const applicableExtensions = ['.png'];

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

  const errors = [];

  const { width, height } = sizeOf(file);

  if (width % 16 !== 0) {
    errors.push(`image width must be divisible by 16 (was ${width})`);
  }
  if (height % 16 !== 0) {
    errors.push(`image height must be divisible by 16 (was ${height})`);
  }

  return errors;
};

module.exports = {
  function: correctTextureDimensions,
  name,
};
