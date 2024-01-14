const chalk = require('chalk');
const { readFileSync } = require('fs');

const name = 'ticketize-todos';

/**
 * Detects instances of TODOs that don't have an associated ticket number
 */
const ticketizeTodos = (file) => {
  // Return early if we're checking *this* file (`ticketize-todos.js`) so we don't get
  // false-positives on all the TODOs in these comments/regexes
  const thisScriptPath = 'ticketize-todos.js';
  if (file.endsWith(thisScriptPath)) {
    return [];
  }

  const errors = [];

  const lines = readFileSync(file, 'utf8').split('\n');

  for (const [lineNumber, line] of lines.entries()) {
    const todosInLine = line.match(/TODO[\S]*/g) ?? [];
    for (const todo of todosInLine) {
      /**
       * valid TODOs are followed by a pair of parentheses, a ticket number, and a colon. e.g.:
       * valid `TODO(32):`
       * invalid: `TODO`, `TODO:`, `TODO()`, `TODO():`, `TODO(32)
       */
      const matchTicketNumber = todo.match(/TODO\((\d+)\)/);
      if (matchTicketNumber === null) {
        const expectedTodoFormat = chalk.blueBright('TODO(<ticket>):');
        const formattedLineNumber = chalk.bold(`line ${lineNumber}`);
        const formattedFullLine = chalk.red(line);
        const formattedTodo = chalk.yellow(todo);

        let error = `invalid TODO format on ${formattedLineNumber}:`;
        error += ` '${formattedTodo}'. TODOs must be of the form ${expectedTodoFormat}`;
        error += `\n\t\t full line: ${formattedFullLine}`;

        errors.push(error);
      }
    }
  }

  return errors;
};

module.exports = {
  function: ticketizeTodos,
  name,
};
