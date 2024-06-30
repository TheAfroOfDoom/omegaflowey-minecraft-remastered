const { readFileSync } = require('fs');
const { differenceBy, uniq } = require('lodash');

const applicableExtensions = ['.ajblueprint'];

/**
 * Iterates through each face of each cube (the model's default variant)
 * and returns a (deduplicated) list of found textures
 */
const getDefaultVariantTextures = (ajblueprint) => {
  const defaultVariantTextureIdxs = [];
  const cubes = ajblueprint.elements.filter(({ type }) => type === 'cube');
  for (const element of cubes) {
    // side = 'north', 'south', etc.
    for (const side of Object.keys(element.faces)) {
      const textureIdx = element.faces[side].texture;
      if (typeof textureIdx !== 'undefined' && textureIdx !== null) {
        defaultVariantTextureIdxs.push(textureIdx);
      }
    }
  }
  // Deduplicate and convert from texture-index to texture object
  const defaultTextures = uniq(defaultVariantTextureIdxs).map(
    (idx) => ajblueprint.textures[idx],
  );

  return defaultTextures;
};

/**
 * Takes in an allowlist of texture UUIDs (ones that are used in the default variant),
 * iterates through a model's variants, and returns a list of (target) textures from
 * each variant's texture map whose source texture was found in the allowlist
 */
const getAllowedVariantTextures = (ajblueprint, allowlist) => {
  const allowedVariantTextures = [];
  for (const variant of ajblueprint.variants.list) {
    for (const [source, target] of Object.entries(variant.texture_map)) {
      if (allowlist.includes(source)) {
        allowedVariantTextures.push(
          ajblueprint.textures.find(({ uuid }) => uuid === target),
        );
      }
    }
  }
  return uniq(allowedVariantTextures);
};

/** Errors for textures defined in a blueprint file that aren't actually used by any cube's face (in any variant) */
const noUnusedTexturesInBlueprints = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  const errors = [];

  const ajblueprint = JSON.parse(readFileSync(file, 'utf8'));

  const defaultTextures = getDefaultVariantTextures(ajblueprint);
  const defaultTextureUuids = defaultTextures.map(({ uuid }) => uuid);
  const variantTextures = getAllowedVariantTextures(
    ajblueprint,
    defaultTextureUuids,
  );

  const allSeenTextures = uniq(defaultTextures.concat(variantTextures));
  const unusedTextures = differenceBy(
    ajblueprint.textures,
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
  function: noUnusedTexturesInBlueprints,
};
