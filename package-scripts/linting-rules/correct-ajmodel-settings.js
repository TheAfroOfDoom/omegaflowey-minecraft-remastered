const chalk = require('chalk');
const { readFileSync } = require('fs');

const applicableExtensions = ['.ajmodel'];

const checkDatapackMcmeta = (model) => {
  const expected = /datapacks\/animated_java\/pack\.mcmeta$/;
  const actual =
    model.animated_java.exporter_settings['animated_java:datapack_exporter']
      .datapack_mcmeta;
  const match = expected.test(actual.replaceAll('\\', '/'));
  if (!match) {
    let error = `incorrect datapack ${chalk.blue('pack.mcmeta')} file; `;
    error += 'it should target the pack.mcmeta under ';
    error += `${chalk.yellow('datapacks/animated_java')}`;
    error += `\n\t\t found: ${chalk.red(actual)}`;
    return [error];
  }
  return [];
};

const checkRigItem = (model) => {
  const expected = 'minecraft:white_dye';
  const actual = model.animated_java.settings.rig_item;
  if (actual !== 'minecraft:white_dye') {
    let error = `incorrect ${chalk.blue('rig_item')}; `;
    error += `was \`${actual}\`, expected \`${expected}\``;
    return [error];
  }
  return [];
};

/**
 * Errors for wrong settings values in .ajmodel files. Limited to trivial checks
 * (like a setting's defined value not matching an exact pattern).
 */
const correctAjmodelSettings = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  const ajmodel = JSON.parse(readFileSync(file, 'utf8'));

  const errors = [];

  const settingsChecks = [checkDatapackMcmeta, checkRigItem];
  for (const settingsCheck of settingsChecks) {
    errors.push(...settingsCheck(ajmodel));
  }

  return errors;
};

module.exports = {
  function: correctAjmodelSettings,
};
