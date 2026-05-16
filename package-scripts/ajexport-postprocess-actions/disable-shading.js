const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const disableShading = ({ resourcePackRootDir }) => {
  const cases = [
    // blueprint, bone, variant
    ['omegaflowey_arena_box', 'root', 'intro_flashing_red'],
  ];

  for (const [blueprint, bone, variant] of cases) {
    process.stdout.write(chalk.gray(`${blueprint}/${bone} > ${variant} ... `));
    const path = `${resourcePackRootDir}/items/blueprint/${blueprint}/${bone}.json`;
    let numChanges = 0;

    const model = JSON.parse(readFileSync(path, 'utf8'));
    for (const [caseIdx, modelCase] of model.model.cases.entries()) {
      if (modelCase.when !== variant) {
        continue;
      }
      model.model.cases[caseIdx].model.tints = [
        { type: 'minecraft:constant', value: 66046 },
      ];
      numChanges += 1;
      break;
    }
    if (numChanges === 0) {
      throw new Error(`Case failed: ${path} > ${variant}`);
    }

    writeFileSync(path, JSON.stringify(model, null, 2) + '\n');
    logNumChanges(numChanges);
  }
};

const logNumChanges = (numChanges) => {
  const numChangesStr =
    numChanges === 0 ? chalk.gray(numChanges) : chalk.greenBright(numChanges);
  console.log(numChangesStr);
};

const fn = ({ resourcePackRootDir }) => {
  console.log(`Disabling shading...`);
  disableShading({ resourcePackRootDir });
};

module.exports = fn;
