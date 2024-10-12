const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const applicableExtensions = [
  'datapacks/omegaflowey/data/entity/function/directorial/boss_fight/summit/origin/setup.mcfunction',
  'datapacks/omegaflowey/data/entity/function/directorial/boss_fight/summit/soul_origin/setup.mcfunction',
];

/**
 * Errors if the Summit boss-fight's origin coordinates differ from the
 * scores defined in a separate file
 */
const originScoresEqual = (file, options) => {
  const fileNormalized = file.replace(/\\/g, '/');
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((ext) => !fileNormalized.endsWith(ext))) {
    return [];
  }

  const errors = [];
  const lines = readFileSync(file, 'utf8').split('\n');
  const scoreLines = lines.filter((line) =>
    line.includes('omegaflowey.global.flag'),
  );

  const scoresRaw = scoreLines.map(
    (line) => line.match(/global\.flag (-?\d+)/)[1],
  );
  const scores = scoresRaw.map((raw) =>
    Number(`${raw.slice(0, -2)}.${raw.slice(-2)}`),
  );

  const originType = fileNormalized.includes('soul_origin')
    ? 'soul_origin'
    : 'origin';
  const getFunctionPath = (subpath) =>
    `datapacks/omegaflowey/data/entity/function/directorial/boss_fight/summit/${originType}/at/${subpath}.mcfunction`;
  const readOriginFunction = (subpath) =>
    readFileSync(getFunctionPath(subpath), 'utf8');

  const origin = [];
  const axes = ['x', 'y', 'z'];
  for (const [idx, axis] of axes.entries()) {
    const originLines = readOriginFunction(axis).split('\n');
    const axisLineIdx = originLines.findIndex((line) =>
      line.startsWith('$execute positioned '),
    );
    const axisLine = originLines[axisLineIdx];
    // $execute positioned -177.5 ~ ~ run $(command)
    const position = axisLine
      .replace('$execute positioned ', '')
      .replace(' run $(command)', '');
    const axesStr = position.split(' ');
    const value = Number(axesStr[idx]);
    origin.push(value);

    const assertEqual = () => {
      const score = scores[idx];
      const originCoord = origin[idx];
      if (score === originCoord) {
        return;
      }

      const axis = axes[idx];
      const fix = () => {
        let formattedCoord;
        if (score === 0) {
          formattedCoord = '';
        } else if (Number.isInteger(score)) {
          formattedCoord = `${score}.0`;
        } else {
          formattedCoord = `${score}`;
        }
        const expectedPosition = new Array(3).fill('~');
        expectedPosition[idx] = formattedCoord;
        const expectedPosStr = expectedPosition.join(' ');
        const expectedLine = `$execute positioned ${expectedPosStr} run $(command)`;
        originLines[axisLineIdx] = expectedLine;
        writeFileSync(getFunctionPath(axis), originLines.join('\n'));
      };

      if (options.fix) {
        fix();
        return;
      }

      const scoreRaw = scoresRaw[idx];
      let error = `origin score mismatch for axis ${chalk.bold(axis)}: `;
      error += `score ${chalk.red(scoreRaw)} `;
      error += `does not map to coordinate ${chalk.blueBright(originCoord)}`;

      errors.push(error);
    };
    assertEqual(idx);
  }

  return errors;
};

module.exports = {
  function: originScoresEqual,
};
