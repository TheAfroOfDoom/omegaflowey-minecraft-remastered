const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const disableShading = ({ resourcePackRootDir }) => {
  const cases = [
    // blueprint, bone, [variant]
    ['omegaflowey_arena_box', 'root', 'intro_flashing_red'],
    ['omegaflowey_finger_gun_laser', 'root'],
    ['omegaflowey_friendliness_pellet_ring', 'root'],
    ['omegaflowey_friendliness_pellet_ring', 'root', 'finished_blinking'],
    ['omegaflowey_homing_vine_blinking_lane', 'root'],
  ];

  const tints = [{ type: 'minecraft:constant', value: 66046 }];

  for (const [blueprint, bone, variant] of cases) {
    process.stdout.write(
      chalk.gray(`${blueprint}/${bone} > ${variant ?? 'Default'} ... `),
    );
    const path = `${resourcePackRootDir}/items/blueprint/${blueprint}/${bone}.json`;
    let numChanges = 0;

    const model = JSON.parse(readFileSync(path, 'utf8'));

    if (variant === undefined) {
      // Default variant
      if (model.model.cases === undefined) {
        model.model.tints = tints;
        numChanges += 1;
      } else {
        model.model.fallback.tints = tints;
        numChanges += 1;
      }
    } else {
      for (const [caseIdx, modelCase] of model.model.cases.entries()) {
        if (modelCase.when !== variant) {
          continue;
        }
        model.model.cases[caseIdx].model.tints = tints;
        numChanges += 1;
        break;
      }
      if (numChanges === 0) {
        throw new Error(`Case failed: ${path} > ${variant}`);
      }
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
