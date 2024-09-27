const chalk = require('chalk');
const { readFileSync } = require('fs');

const applicableExtensions = [
  'datapacks/omega-flowey/data/entity/function/directorial/boss_fight/summit/origin/setup.mcfunction',
];

/**
 * Errors if the Summit boss-fight's origin coordinates differ from the
 * scores defined in a separate file
 */
const originScoresEqual = (file) => {
  const fileNormalized = file.replace(/\\/g, '/');
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((ext) => !fileNormalized.endsWith(ext))) {
    return [];
  }

  const errors = [];
  const content = readFileSync(file, 'utf8');
  const lines = content.split('\n').filter((line) => line !== '');

  const scoresRaw = lines.map((line) => line.match(/global\.flag (-?\d+)/)[1]);
  const scores = scoresRaw.map((raw) =>
    Number(`${raw.slice(0, -2)}.${raw.slice(-2)}`),
  );

  const readOriginFunction = (subpath) =>
    readFileSync(
      `datapacks/omega-flowey/data/entity/function/directorial/boss_fight/summit/origin/at/${subpath}.mcfunction`,
      'utf8',
    );

  const origin = [];
  const axes = ['x', 'y', 'z'];
  for (const [idx, axis] of axes.entries()) {
    const originLines = readOriginFunction(axis).split('\n');
    const axisLine = originLines.find((line) =>
      line.startsWith('$execute positioned '),
    );
    // $execute positioned -177.5 ~ ~ run $(command)
    const position = axisLine
      .replace('$execute positioned ', '')
      .replace(' run $(command)', '');
    const axesStr = position.split(' ');
    const value = Number(axesStr[idx]);
    origin.push(value);
  }

  const assertEqual = (idx) => {
    const score = scores[idx];
    const originCoord = origin[idx];
    if (score === originCoord) {
      return;
    }

    const axis = axes[idx];
    const scoreRaw = scoresRaw[idx];
    let error = `origin score mismatch for axis ${chalk.bold(axis)}: `;
    error += `score ${chalk.red(
      scoreRaw,
    )} does not map to coordinate ${chalk.blueBright(originCoord)}`;

    errors.push(error);
  };
  for (const idx of axes.keys()) {
    assertEqual(idx);
  }

  return errors;
};

module.exports = {
  function: originScoresEqual,
};
