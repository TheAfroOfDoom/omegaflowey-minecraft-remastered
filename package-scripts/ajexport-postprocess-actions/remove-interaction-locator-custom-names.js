const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const removeInteractionLocatorCustomNames = ({ datapackRootDir }) => {
  // model, locator name
  const modelLocators = [
    ['omegaflowey_act_button', 'interaction_hitbox'],
    ['omegaflowey_act_button', 'interaction_hitbox2'],
    ['omegaflowey_act_button', 'interaction_hitbox3'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul2_0'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul2_1'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul2_2'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul2_3'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul2_4'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul3_0'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul3_1'],
    ['omegaflowey_act_button', 'interaction_hitbox_soul3_2'],
    ['omegaflowey_flamethrower_fire', 'hitbox'],
    ['omegaflowey_soul_1_glove', 'interaction_hitbox'],
    ['omegaflowey_soul_1_glove', 'interaction_hitbox2'],
    ['omegaflowey_soul_1_thumb', 'interaction_hitbox'],
    ...[...Array(15).keys()].map((idx) => [
      `omegaflowey_soul_3_word_${idx}`,
      'locator',
    ]),
    ...[...Array(15).keys()].map((idx) => [
      `omegaflowey_soul_3_word_${idx}`,
      'locator2',
    ]),
    ...[...Array(15).keys()].map((idx) => [
      `omegaflowey_soul_3_word_${idx}`,
      'locator3',
    ]),
    ['omegaflowey_soul_3_word_8_template', 'locator'],
    ['omegaflowey_soul_3_word_8_template', 'locator2'],
    ['omegaflowey_soul_3_word_8_template', 'locator3'],
  ];

  for (const [namespace, locatorName] of modelLocators) {
    const path = `${datapackRootDir}/function/${namespace}/zzz/summon/as_locator/${locatorName}.mcfunction`;
    process.stdout.write(
      chalk.gray(`${namespace}/zzz/summon/as_locator/${locatorName} ... `),
    );

    const content = readFileSync(path, 'utf8');
    const lines = content.split('\n');
    const fixedLines = lines.filter(
      (line) => !line.startsWith('data modify entity @s CustomName set value '),
    );
    writeFileSync(path, fixedLines.join('\n'));

    const numChanges = lines.length - fixedLines.length;
    logNumChanges(numChanges);
  }
};

const logNumChanges = (numChanges) => {
  const numChangesStr =
    numChanges === 0 ? chalk.gray(numChanges) : chalk.greenBright(numChanges);
  console.log(numChangesStr);
};

const fixInteractionLocatorCustomNames = ({ datapackRootDir }) => {
  console.log(`Setting interaction-locators' CustomNames to empty...`);
  removeInteractionLocatorCustomNames({ datapackRootDir });
};

module.exports = fixInteractionLocatorCustomNames;
