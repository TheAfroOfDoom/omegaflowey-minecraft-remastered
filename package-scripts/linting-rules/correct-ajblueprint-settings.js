const chalk = require('chalk');
const { readFileSync } = require('fs');

const applicableExtensions = ['.ajblueprint'];

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
  const expected = 'minecraft:white_dye';
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
    checkDatapack,
    checkExportNamespace,
    checkRigItem,
    checkSummonCommands,
  ];
  for (const settingsCheck of settingsChecks) {
    errors.push(...settingsCheck(ajblueprint));
  }

  return errors;
};

module.exports = {
  function: correctAjblueprintSettings,
};
