const { readFileSync } = require('fs');
const { differenceBy, uniq } = require('lodash');

const name = 'no-unused-textures-in-models';
const applicableExtensions = ['.ajmodel'];

/**
 * Iterates through each face of each cube (the model's default variant)
 * and returns a (deduplicated) list of found textures
 */
const getDefaultVariantTextures = (ajmodel) => {
  const defaultVariantTextureIdxs = [];
  const cubes = ajmodel.elements.filter(({ type }) => type === 'cube');
  for (const element of cubes) {
    // side = 'north', 'south', etc.
    for (const side of Object.keys(element.faces)) {
      const textureIdx = element.faces[side].texture;
      if (typeof textureIdx !== 'undefined') {
        defaultVariantTextureIdxs.push(textureIdx);
      }
    }
  }
  // Deduplicate and convert from texture-index to texture object
  const defaultTextures = uniq(defaultVariantTextureIdxs).map(
    (idx) => ajmodel.textures[idx],
  );

  return defaultTextures;
};

/**
 * Takes in an allowlist of texture UUIDs (ones that are used in the default variant),
 * iterates through a model's variants, and returns a list of (target) textures from
 * each variant's texture map whose source texture was found in the allowlist
 */
const getAllowedVariantTextures = (ajmodel, allowlist) => {
  const allowedVariantTextures = [];
  for (const variant of ajmodel.animated_java.variants) {
    // Skip the default variant since that's what our allowlist consists of
    if (variant.default) {
      continue;
    }
    for (const [source, target] of Object.entries(variant.textureMap)) {
      if (allowlist.includes(source)) {
        allowedVariantTextures.push(
          ajmodel.textures.find(({ uuid }) => uuid === target),
        );
      }
    }
  }
  return uniq(allowedVariantTextures);
};

/** Errors for textures defined in a model file that aren't actually used by any cube's face (in any variant) */
const noUnusedTexturesInModels = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  const errors = [];

  const ajmodel = JSON.parse(readFileSync(file, 'utf8'));

  const defaultTextures = getDefaultVariantTextures(ajmodel);
  const defaultTextureUuids = defaultTextures.map(({ uuid }) => uuid);
  const variantTextures = getAllowedVariantTextures(
    ajmodel,
    defaultTextureUuids,
  );

  const allSeenTextures = uniq(defaultTextures.concat(variantTextures));
  const unusedTextures = differenceBy(
    ajmodel.textures,
    allSeenTextures,
    'uuid',
  );
  if (unusedTextures.length > 0) {
    const unusedTextureNames = unusedTextures.map(({ name }) => name);
    errors.push(`delete unused textures: [ ${unusedTextureNames.join(', ')} ]`);
  }

  return errors;
};

module.exports = {
  function: noUnusedTexturesInModels,
  name,
};
