const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const applicableExtensions = ['.ajblueprint'];

/** Animations need to be prefixed with their model's name and an underscore _ */
const checkAnimationName = (model, { file }) => {
  const FIX = false;
  const errors = [];
  const fixedModel = structuredClone(model);
  const expectedPrefix = 'omegaflowey_';

  const animations = model.animations ?? [];
  for (const [idx, animation] of animations.entries()) {
    const { name } = animation;
    const isValidName = name.startsWith(expectedPrefix);
    if (!isValidName) {
      let error = `animation name is not namespaced: `;
      error += chalk.redBright(name);
      error += ` (expected a prefix of `;
      error += chalk.blueBright(expectedPrefix);
      error += ` )`;
      errors.push(error);

      fixedModel.animations[idx].name = `${expectedPrefix}${name}`;
    }
  }

  if (FIX) {
    writeFileSync(file, JSON.stringify(fixedModel, undefined, '\t'));
  }

  return errors;
};

/** Double checks we don't accidentally delete animation variable placeholders in various animations. */
const checkAnimationVariablePlaceholders = (model) => {
  const allowlist = [
    'aj:omegaflowey_act_button',
    'aj:omegaflowey_arm_vine',
    'aj:omegaflowey_arm_vine_right',
    'aj:omegaflowey_mouth',
    'aj:omegaflowey_soul_1_glove',
    'aj:omegaflowey_soul_1_thumb',
    'aj:omegaflowey_soul_2_note',
    'aj:omegaflowey_soul_4_pan',
    'aj:omegaflowey_soul_3_word_5',
    'aj:omegaflowey_soul_3_word_6',
    'aj:omegaflowey_soul_3_word_7',
    'aj:omegaflowey_soul_3_word_8',
    'aj:omegaflowey_soul_3_word_8_template',
    'aj:omegaflowey_soul_3_word_9',
    'aj:omegaflowey_tv_screen',
  ];

  const blueprintId = model.blueprint_settings.blueprint_id;
  if (!allowlist.includes(blueprintId)) {
    return [];
  }

  const { animation_variable_placeholders = '' } = model;
  if (animation_variable_placeholders !== '') {
    return [];
  }

  const error = `missing ${chalk.blue('animation_variable_placeholders')}; `;
  return [error];
};

/**
 * Custom model data offset need to be some large, arbitrary value to avoid collision
 * with other Summit booths
 */
const checkCustomModelDataOffset = (model) => {
  const errors = [];

  const expectedCMDOffset = 4654465;
  const cmdOffset = model.blueprint_settings.custom_model_data_offset;
  const isValidCMDOffset = expectedCMDOffset === cmdOffset;
  if (!isValidCMDOffset) {
    let error = `custom model data offset is incorrect: `;
    error += chalk.redBright(cmdOffset);
    error += ` (expected `;
    error += chalk.blueBright(expectedCMDOffset);
    error += ` )`;
    errors.push(error);
  }

  return errors;
};

const checkDatapack = (model) => {
  const expected = /datapacks\/animated_java\/?$/;
  const actual = model.blueprint_settings.data_pack;
  const match = expected.test(actual.replaceAll('\\', '/'));
  if (match) {
    return [];
  }

  let error = `incorrect datapack ${chalk.blue('directory')}; `;
  error += 'it should target ';
  error += `${chalk.yellow('datapacks/animated_java')}`;
  error += `\n\t\t found: ${chalk.red(actual)}`;
  return [error];
};

/** This flag needs to be enabled to enable the custom CMD offset */
const checkEnableAdvancedResourcePackSettings = (model) => {
  const errors = [];

  const expected = true;
  const actual =
    model.blueprint_settings.enable_advanced_resource_pack_settings;
  const isValid = actual === expected;
  if (!isValid) {
    let error = `enable_advanced_resource_pack_settings is incorrect: `;
    error += chalk.redBright(actual);
    error += ` (expected `;
    error += chalk.blueBright(expected);
    error += ` )`;
    errors.push(error);
  }

  return errors;
};

/**
 * Export namespaces need to start with `omegaflowey_` (e.g. `omegaflowey_mouth`)
 * in order to be compatible with Smithed Summit
 */
const checkExportNamespace = (model) => {
  const errors = [];
  const namespace = model.blueprint_settings.blueprint_id;
  const isValidName = namespace.startsWith('aj:omegaflowey_');
  if (!isValidName) {
    let error = 'export namespace is missing ';
    error += chalk.blueBright('omegaflowey_');
    error += ' prefix: ';
    error += chalk.redBright(namespace);
    errors.push(error);
  }

  return errors;
};

const checkRigItem = (model) => {
  const expected = 'minecraft:pink_dye';
  const actual = model.blueprint_settings.display_item;
  if (actual === expected || actual === undefined) {
    return [];
  }

  let error = `incorrect ${chalk.blue('display_item')}; `;
  error += `was \`${actual}\`, expected \`${expected}\``;
  return [error];
};

const checkSummonCommands = (model) => {
  const summonCommands = model.blueprint_settings.summon_commands;
  if (summonCommands !== '') {
    return [];
  }

  let error = `invalid ${chalk.blue('summon_commands')} property; `;
  error += `it should contain ${chalk.yellow(
    '"tag @s add ..."',
  )} commands at a minimum`;
  return [error];
};

const checkTags = (model) => {
  const errors = [];
  const tagsStr = model.blueprint_settings.custom_rig_entity_tags ?? '';
  const currentTags = new Set(tagsStr.split(','));
  const requiredTags = [
    'summit.booth_entity.omegaflowey',
    'omega-flowey-remastered',
  ];

  for (const requiredTag of requiredTags) {
    if (currentTags.has(requiredTag)) {
      continue;
    }
    const error = `missing tag: ${chalk.blueBright(requiredTag)}`;
    errors.push(error);
  }

  const hasSummitDynamic = currentTags.has('summit.dynamic');
  const hasSummitStatic = currentTags.has('summit.static');
  if (hasSummitDynamic === hasSummitStatic) {
    const error = `missing tag: one of ${chalk.blueBright(
      'summit.dynamic',
    )} or ${chalk.blueBright('summit.static')}`;
    errors.push(error);
  }

  return errors;
};

const checkUseEntityStacking = (model) => {
  const errors = [];
  const { use_entity_stacking } = model.blueprint_settings;
  if (use_entity_stacking !== undefined) {
    let error = chalk.blueBright('use_entity_stacking');
    error += ' must not be set (default behavior is )';
    error += chalk.blueBright('true');
    error += ')';
    errors.push(error);
  }
  return errors;
};

/** Ensures each model's UUID is unique. */
const checkUniqueUuids = (model, { globals }) => {
  const errors = [];

  globals.checkUniqueUuids ??= {};
  const { uuid } = model.meta;
  if (uuid in globals.checkUniqueUuids) {
    const duplicateModelName = globals.checkUniqueUuids[uuid];
    let error = chalk.blueBright('uuid');
    error += ' must be unique; same as ';
    error += chalk.yellowBright(duplicateModelName);
    errors.push(error);
  } else {
    globals.checkUniqueUuids[uuid] = model.blueprint_settings.blueprint_id;
  }
  return errors;
};

/**
 * Errors for wrong settings values in .ajblueprint files. Limited to trivial checks
 * (like a setting's defined value not matching an exact pattern).
 */
// eslint-disable-next-line no-unused-vars
const correctAjblueprintSettings = (file, argv, globals) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  const ajblueprint = JSON.parse(readFileSync(file, 'utf8'));

  const errors = [];

  const settingsChecks = [
    checkAnimationName,
    checkAnimationVariablePlaceholders,
    checkCustomModelDataOffset,
    checkDatapack,
    checkEnableAdvancedResourcePackSettings,
    checkExportNamespace,
    checkRigItem,
    checkSummonCommands,
    checkTags,
    checkUniqueUuids,
    checkUseEntityStacking,
  ];
  for (const settingsCheck of settingsChecks) {
    errors.push(...settingsCheck(ajblueprint, { file, globals }));
  }

  return errors;
};

module.exports = {
  function: correctAjblueprintSettings,
};
