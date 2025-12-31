const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const replaceDiamondDisplayItems = (rootDir) => {
  const blueprints = [
    ['omegaflowey_soul_1_glove', 'omega-flowey:soul/soul-1-glove'],
    ['omegaflowey_soul_1_thumb', 'omega-flowey:soul/soul-1-thumb'],
  ];

  for (const [namespace, displayItem] of blueprints) {
    const blueprintDir = `${rootDir}/function/${namespace}`;

    process.stdout.write(chalk.gray(`${namespace} ... `));

    let numChanges = 0;
    const summonFile = `${blueprintDir}/summon.mcfunction`;

    const content = readFileSync(summonFile, 'utf8');
    const lines = content.split('\n');
    const fixedLines = lines.map((line) => {
      const template = ',item:{id:"minecraft:diamond"}';
      if (line.includes(template)) {
        numChanges += 1;
        const replacement = `,item:{id:"minecraft:diamond", components: { "minecraft:item_model": "${displayItem}" } }`;
        return line.replaceAll(template, replacement);
      } else {
        return line;
      }
    });
    writeFileSync(summonFile, fixedLines.join('\n'));
    logNumChanges(numChanges);
  }
};

const logNumChanges = (numChanges) => {
  const numChangesStr =
    numChanges === 0 ? chalk.gray(numChanges) : chalk.greenBright(numChanges);
  console.log(numChangesStr);
};

const replaceDisplayItems = (rootDir) => {
  console.log(`Replacing display items...`);
  replaceDiamondDisplayItems(rootDir);
};

module.exports = replaceDisplayItems;
