const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const disableShading = ({ resourcePackRootDir }) => {
  const cases = [
    // blueprint, bone, [variant]
    ['omegaflowey_arm_vine', 'root'],
    ['omegaflowey_arm_vine_right', 'root'],
    ['omegaflowey_arena_box', 'root', 'intro_flashing_red'],
    ['omegaflowey_bomb', 'fire', 'explode'],
    ['omegaflowey_finger_gun_laser', 'root'],
    ['omegaflowey_flowercontributor', 'bone'],
    ['omegaflowey_flowercontributor', 'bone', 'adahy'],
    ['omegaflowey_friendliness_pellet_ring', 'root'],
    ['omegaflowey_friendliness_pellet_ring', 'root', 'finished_blinking'],
    ['omegaflowey_homing_vine', 'vine'],
    ['omegaflowey_homing_vine_blinking_lane', 'root'],
    ['omegaflowey_lower_eye', 'lid', 'bright'],
    ['omegaflowey_lower_eye', 'lid', 'colorful'],
    ['omegaflowey_lower_eye', 'lid', 'white'],
    ['omegaflowey_lower_eye', 'iris', 'bright'],
    ['omegaflowey_lower_eye', 'iris', 'colorful'],
    ['omegaflowey_lower_eye', 'iris', 'white'],
    ['omegaflowey_lower_eye', 'pupil1', 'bright'],
    ['omegaflowey_lower_eye', 'pupil1', 'colorful'],
    ['omegaflowey_lower_eye', 'pupil1', 'dark'],
    ['omegaflowey_lower_eye', 'pupil1', 'white'],
    ['omegaflowey_lower_eye', 'sclera', 'bright'],
    ['omegaflowey_lower_eye', 'sclera', 'colorful'],
    ['omegaflowey_lower_eye', 'sclera', 'white'],
    ['omegaflowey_soul', 'root'],
    ['omegaflowey_soul', 'root', '0'],
    ['omegaflowey_soul', 'root', '1'],
    ['omegaflowey_soul', 'root', '2'],
    ['omegaflowey_soul', 'root', '3'],
    ['omegaflowey_soul', 'root', '4'],
    ['omegaflowey_soul', 'root', '5'],
    ['omegaflowey_soul_3_book', 'root'],
    ['omegaflowey_tv_screen', 'box', 'smiling'],
    ['omegaflowey_tv_screen', 'box', 'static'],
    ['omegaflowey_tv_screen', 'box', 'warning'],
    ['omegaflowey_tv_screen', 'screen'],
    ['omegaflowey_tv_screen', 'screen', 'intro_laughing'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_1'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_2'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_3'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_4'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_5'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_6'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_7'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_8'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_9'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_10'],
    ['omegaflowey_tv_screen', 'screen', 'reveal_11'],
    ['omegaflowey_tv_screen', 'screen', 'smiling'],
    ['omegaflowey_tv_screen', 'screen', 'smiling_noglow'],
    ['omegaflowey_tv_screen', 'screen', 'smiling_wide'],
    ['omegaflowey_tv_screen', 'screen', 'soul_idle'],
    ['omegaflowey_tv_screen', 'screen', 'soul_break'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_0'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_1'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_2'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_3'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_4'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_5'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_6'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_7'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_8'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_9'],
    ['omegaflowey_tv_screen', 'screen', 'soul_shatter_10'],
    ['omegaflowey_tv_screen', 'screen', 'static'],
    ['omegaflowey_tv_screen', 'screen', 'static_noglow'],
    ['omegaflowey_tv_screen', 'screen', 'thumbs_up'],
    ['omegaflowey_tv_screen', 'screen', 'warning'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_0'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_1'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_2'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_3'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_4'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_5'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_6'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_7'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_8'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_9'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_10'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_11'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_12'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_13'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_14'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_15'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_16'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_17'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_18'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_19'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_20'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_21'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_22'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_23'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_24'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_25'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_26'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_27'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_28'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_29'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_30'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_31'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_32'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_33'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_34'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_35'],
    ['omegaflowey_tv_screen', 'screen_tvinside', 'tvinside_36'],
    ['omegaflowey_upper_eye', 'iris', 'bright'],
    ['omegaflowey_upper_eye', 'iris', 'colorful'],
    ['omegaflowey_upper_eye', 'iris', 'white'],
    ['omegaflowey_upper_eye', 'pupil1', 'bright'],
    ['omegaflowey_upper_eye', 'pupil1', 'colorful'],
    ['omegaflowey_upper_eye', 'pupil1', 'dark'],
    ['omegaflowey_upper_eye', 'pupil1', 'white'],
    ['omegaflowey_upper_eye', 'sclera', 'bright'],
    ['omegaflowey_upper_eye', 'sclera', 'colorful'],
    ['omegaflowey_upper_eye', 'sclera', 'white'],
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
