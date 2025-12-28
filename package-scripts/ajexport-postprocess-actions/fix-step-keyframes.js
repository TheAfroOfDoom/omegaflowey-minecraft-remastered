const chalk = require('chalk');
const { lstatSync, readFileSync, writeFileSync } = require('fs');
const { globSync } = require('glob');

const setInterpolationDurationZeroAllFrames = (rootDir) => {
  const stepAnimations = [
    ['omegaflowey_arm_vine', 'omegaflowey_intro_shake'],
    ['omegaflowey_arm_vine_right', 'omegaflowey_intro_shake'],
    ['omegaflowey_lower_eye', 'omegaflowey_intro_shake'],
    ['omegaflowey_petal_pipe_circle_simplified', 'omegaflowey_intro_shake'],
    ['omegaflowey_petal_pipe_middle_simplified', 'omegaflowey_intro_shake'],
    ['omegaflowey_tv_screen', 'omegaflowey_intro_shake'],
    ['omegaflowey_upper_eye', 'omegaflowey_intro_shake'],
    ['omegaflowey_nose', 'omegaflowey_nose_move_slow_shake'],
    ['omegaflowey_soul', 'omegaflowey_shake'],
  ];

  for (const [namespace, animation] of stepAnimations) {
    const dir = `${rootDir}/function/${namespace}/animations/${animation}`;
    process.stdout.write(chalk.gray(`${dir} ... `));
    let numChanges = 0;

    const frameFiles = globSync(`${dir}/zzz/frames/**`).filter((path) =>
      lstatSync(path).isFile(),
    );
    for (const frameFile of frameFiles) {
      const content = readFileSync(frameFile, 'utf8');
      const lines = content.split('\n');
      const fixedLines = lines.map((line) => {
        if (line.endsWith('interpolation_duration: 1}')) {
          numChanges += 1;
          return line.replace(
            /interpolation_duration: 1}$/,
            'interpolation_duration: 0}',
          );
        } else {
          return line;
        }
      });
      writeFileSync(frameFile, fixedLines.join('\n'));
    }
    logNumChanges(numChanges);
  }
};

const setInterpolationDurationMouthFrames = (rootDir) => {
  const mouthLaughStepFrames = [
    1, 4,

    8, 11, 14,

    18, 21, 24,

    28, 31, 34,

    38, 41, 44,

    48, 51, 54,

    58, 61, 64,

    68, 71, 74,

    78, 81, 84,

    88, 91, 94,

    98, 101, 104,

    108, 111, 114,

    118,
  ];

  const stepAnimations = [
    ['omegaflowey_mouth', 'omegaflowey_laugh', mouthLaughStepFrames],
  ];

  for (const [namespace, animation, frames] of stepAnimations) {
    const dir = `${rootDir}/function/${namespace}/animations/${animation}`;

    process.stdout.write(chalk.gray(`${dir} ... `));
    let numChanges = 0;

    const frameFiles = frames.map(
      (frame) => `${dir}/zzz/frames/${frame}.mcfunction`,
    );

    for (const frameFile of frameFiles) {
      const content = readFileSync(frameFile, 'utf8');
      const lines = content.split('\n');
      const fixedLines = lines.map((line) => {
        if (line.endsWith('interpolation_duration: 1}')) {
          numChanges += 1;
          return line.replace(
            /interpolation_duration: 1}$/,
            'interpolation_duration: 0}',
          );
        } else {
          return line;
        }
      });
      writeFileSync(frameFile, fixedLines.join('\n'));
    }
    logNumChanges(numChanges);
  }
};

const logNumChanges = (numChanges) => {
  const numChangesStr =
    numChanges === 0 ? chalk.gray(numChanges) : chalk.greenBright(numChanges);
  console.log(numChangesStr);
};

const fixStepKeyframes = (rootDir) => {
  console.log(`Setting step-animation bones' interpolation duration to 0...`);
  setInterpolationDurationZeroAllFrames(rootDir);
  setInterpolationDurationMouthFrames(rootDir);
};

module.exports = fixStepKeyframes;
