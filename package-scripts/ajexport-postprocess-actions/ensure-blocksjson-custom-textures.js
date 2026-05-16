const chalk = require('chalk');
const { readFileSync, writeFileSync } = require('fs');

const ensureCustomTexturesInBlocks = () => {
  console.log(`Ensuring \`"source": "custom"\` is in \`blocks.json\`...`);

  const blocksPath = `resourcepack/assets/minecraft/atlases/blocks.json`;
  process.stdout.write(chalk.gray(`${blocksPath} ... `));

  const content = readFileSync(blocksPath, 'utf8');
  const blocks = JSON.parse(content);

  const sources = blocks.sources.map((element) => element.source);
  if (sources.includes('custom')) {
    return;
  }

  blocks.sources.unshift({
    type: 'directory',
    source: 'custom',
    prefix: 'custom/',
  });
  writeFileSync(blocksPath, JSON.stringify(blocks, null, 2) + '\n');

  const checkmark = '\u{2705}';
  console.log(chalk.greenBright(checkmark));
};

module.exports = ensureCustomTexturesInBlocks;
