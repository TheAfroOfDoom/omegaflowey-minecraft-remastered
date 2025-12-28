const chalk = require('chalk');
const { lstatSync, readFileSync, writeFileSync } = require('fs');
const { globSync } = require('glob');

const setBonesInterpolationDurationZero = (rootDir) => {
  console.log(`Setting step-animation bones' interpolation duration to 0...`);

  const stepAnimations = [
    ['omegaflowey_arm_vine', 'omegaflowey_intro_shake'],
    ['omegaflowey_arm_vine_right', 'omegaflowey_intro_shake'],
    ['omegaflowey_lower_eye', 'omegaflowey_intro_shake'],
    ['omegaflowey_petal_pipe_circle_simplified', 'omegaflowey_intro_shake'],
    ['omegaflowey_petal_pipe_middle_simplified', 'omegaflowey_intro_shake'],
    ['omegaflowey_tv_screen', 'omegaflowey_intro_shake'],
    ['omegaflowey_upper_eye', 'omegaflowey_intro_shake'],
  ];

  const stepAnimationDirs = stepAnimations.map((stepAnimationPair) => {
    const [namespace, animation] = stepAnimationPair;
    return `${rootDir}/function/${namespace}/animations/${animation}`;
  });

  for (const dir of stepAnimationDirs) {
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
    console.log(chalk.greenBright(numChanges));
  }
};

const fixStepKeyframes = (rootDir) => {
  setBonesInterpolationDurationZero(rootDir);
};

module.exports = fixStepKeyframes;
