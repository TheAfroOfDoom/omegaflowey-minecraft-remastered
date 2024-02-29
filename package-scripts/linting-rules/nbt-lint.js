// const chalk = require('chalk');
const { readFileSync } = require('fs');
const nbtlint = require('../../lib/nbt-lint');

const applicableExtensions = ['.mcfunction'];

/**
 * TODO
 */
const lintSnbt = (file) => {
  // Return early if file does not match any applicable extension
  if (applicableExtensions.every((extension) => !file.endsWith(extension))) {
    return [];
  }

  // TODO: this is debug
  const onlyFile =
    'datapacks/omega-flowey/data/entity/functions/directorial/boss_fight/vanilla/start.mcfunction';
  if (!file.replaceAll('\\', '/').endsWith(onlyFile)) {
    return [];
  }

  const errors = [];

  const lines = readFileSync(file, 'utf8').split('\n');
  // let multiLine; // TODO
  for (const [lineNumber, line] of lines.entries()) {
    // Ignore comments
    if (line.startsWith('#')) {
      continue;
    }
    // Find first `{` / last `}`
    const openBracketIdx = line.indexOf('{');
    const closeBracketIdx = line.lastIndexOf('}');

    // No NBT object found on this line
    if (openBracketIdx === -1 && closeBracketIdx === -1) {
      continue;
    }
    console.log({ lineNumber, line });

    if (openBracketIdx === -1) {
      errors.push('Missing open bracket');
    } else if (closeBracketIdx === -1) {
      errors.push('Missing close bracket');
    } else {
      const nbt = line.slice(openBracketIdx, closeBracketIdx + 1);
      try {
        const parsed = nbtlint.parse(nbt);

        const res = nbtlint.stringify(parsed);
        console.log({ nbt, res });
      } catch (e) {
        console.log(e);
        const error = `invalid NBT on line ${lineNumber}: ${e.message}`;
        errors.push(error);
      }
    }
  }

  return errors;
};

module.exports = {
  function: lintSnbt,
};
