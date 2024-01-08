const sizeOf = require('image-size');

const name = 'correct-image-dimensions';
const applicableExtensions = ['.png'];

const correctImageDimensions = (file) => {
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
  function: correctImageDimensions,
  name,
};
