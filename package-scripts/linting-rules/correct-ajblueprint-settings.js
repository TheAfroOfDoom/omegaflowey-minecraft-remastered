const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const applicableExtensions = ['.ajblueprint'];

/** Animations need to be prefixed with their model's name and an underscore _ */
const checkAnimationName = (model, { file }) => {
  const FIX = false;
  const errors = [];
  const fixedModel = structuredClone(model);
  const expectedPrefix = 'omegaflowey_';

  for (const [idx, animation] of model.animations.entries()) {
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
    let error = `custom model data offset is incorrect: `;
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
  const namespace = model.blueprint_settings.export_namespace;
  const isValidName = namespace.startsWith('omegaflowey_');
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
  if (actual === expected) {
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

/**
 * Errors for wrong settings values in .ajblueprint files. Limited to trivial checks
 * (like a setting's defined value not matching an exact pattern).
 */
const correctAjblueprintSettings = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  const ajblueprint = JSON.parse(readFileSync(file, 'utf8'));

  const errors = [];

  const settingsChecks = [
    checkAnimationName,
    checkCustomModelDataOffset,
    checkDatapack,
    checkEnableAdvancedResourcePackSettings,
    checkExportNamespace,
    checkRigItem,
    checkSummonCommands,
  ];
  for (const settingsCheck of settingsChecks) {
    errors.push(...settingsCheck(ajblueprint, { file }));
  }

  return errors;
};

module.exports = {
  function: correctAjblueprintSettings,
};
