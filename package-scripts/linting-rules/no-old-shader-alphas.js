const chalk = require('chalk');
const { PNG } = require('pngjs');
const fs = require('fs-extra');

const applicableExtensions = ['.png'];
const exclude = /datapacks\//;

const isEmissive = (alpha) => alpha === 254;
const isTransparentEmissive = (alpha) => 9 <= alpha && alpha <= 16;

const isNoShading = (alpha) => alpha === 253;
const isTransparentNoShading = (alpha) => 1 <= alpha && alpha <= 8;

/**
 * If a texture's dimensions aren't minimum powers of 16, Minecraft outputs a warning
 * on resourcepack reload (F3 + T) relating to its mip level being limited.
 * e.g.: `Texture animated_java:item/black with size 1x1 limits mip level from 4 to 0`
 */
const noOldShaderAlphas = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }
  // Return early if file matches exclude pattern
  if (exclude.test(file.replaceAll('\\', '/'))) {
    return [];
  }

  const errors = [];

  const data = fs.readFileSync(file);
  const pngWithMetadata = PNG.sync.read(data);
  const subpixels = Array.from(pngWithMetadata.data);

  const emissiveIdxs = [];
  const transparentEmissiveIdxs = [];
  const noShadeIdxs = [];
  const transparentNoShadeIdxs = [];

  for (let i = 0; i < subpixels.length; i += 4) {
    // eslint-disable-next-line no-unused-vars
    const [r, g, b, a] = subpixels.slice(i, i + 4);
    const col = i % pngWithMetadata.width;
    const row = Math.floor(i / pngWithMetadata.height);

    if (isEmissive(a)) {
      emissiveIdxs.push([[col, row]]);
    }
    if (isTransparentEmissive(a)) {
      transparentEmissiveIdxs.push([[col, row]]);
    }
    if (isNoShading(a)) {
      noShadeIdxs.push([[col, row]]);
    }
    if (isTransparentNoShading(a)) {
      transparentNoShadeIdxs.push([[col, row]]);
    }
  }

  if (emissiveIdxs.length > 0) {
    errors.push(`${chalk.blueBright('emissive')} pixels found`);
  }
  if (transparentEmissiveIdxs.length > 0) {
    errors.push(`${chalk.blueBright('emissive (transparent)')} pixels found`);
  }
  if (noShadeIdxs.length > 0) {
    errors.push(`${chalk.greenBright('no shade')} pixels found`);
  }
  if (transparentNoShadeIdxs.length > 0) {
    errors.push(`${chalk.greenBright('no shade (transparent)')} pixels found`);
  }

  return errors;
};

module.exports = {
  function: noOldShaderAlphas,
};
