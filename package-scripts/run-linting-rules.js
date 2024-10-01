const chalk = require('chalk');
const { lstatSync } = require('fs');
const { globSync } = require('glob');
const parseArgs = require('minimist');
const { basename } = require('path');

const minimistOptions = { boolean: ['fix'] };
const argv = parseArgs(process.argv.slice(2), minimistOptions);

const rules = globSync('./package-scripts/linting-rules/*.js').map(
  (rulePath) => ({
    name: basename(rulePath, '.js'),
    ...require(`${process.cwd()}/${rulePath}`),
  }),
);

const main = () => {
  const { exclude, include } = argv;
  if (typeof include === 'undefined') {
    throw new Error(
      'No include glob provided for files to run linting rules on',
    );
  }

  let errorCount = 0;
  const excludePatterns = exclude?.split(',') ?? [];
  excludePatterns.push('build/**');
  const paths = globSync(include, { ignore: excludePatterns });
  const files = paths.filter((path) => lstatSync(path).isFile());

  for (const file of files) {
    const errors = [];
    for (const rule of rules) {
      const ruleErrors = rule.function(file, argv);
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
    let pattern = `--include ${include}`;
    if (typeof exclude !== 'undefined') {
      pattern += ` --exclude ${exclude}`;
    }
    const success = chalk.greenBright(
      `No linting errors found for pattern: '${pattern}'!`,
    );
    console.log(success);
  }
  process.exit(errorCount);
};

main();
