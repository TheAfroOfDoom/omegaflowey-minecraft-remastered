const chalk = require('chalk');
const { globSync } = require('glob');
const minimist = require('minimist');

const argv = minimist(process.argv.slice(2));

const rules = globSync('./package-scripts/linting-rules/*.js').map((rulePath) =>
  require(`${process.cwd()}/${rulePath}`),
);

const main = () => {
  if (typeof argv.glob === 'undefined') {
    throw new Error('No glob provided for files to run linting rules on');
  }

  let errorCount = 0;
  const files = globSync(argv.glob);

  for (const file of files) {
    const errors = [];
    for (const rule of rules) {
      const ruleErrors = rule.function(file);
      errors.push(
        ...ruleErrors.map((error) => `${chalk.yellow(rule.name)}: ${error}`),
      );
    }
    if (errors.length > 0) {
      console.log(
        `${chalk.redBright('Error(s)')} in file: ${chalk.cyanBright(file)}`,
      );
      for (const error of errors) {
        console.log(error);
      }
      console.log();
    }
    errorCount += errors.length;
  }

  if (errorCount === 0) {
    console.log(
      chalk.greenBright(`No linting errors found for glob '${argv.glob}'!`),
    );
  }
  process.exit(errorCount);
};

main();
