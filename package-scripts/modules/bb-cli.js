// With thanks to fetchbot on discord for the code
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/* eslint-env browser */
/* global BBPlugin, electron */

BBPlugin.register('bb-cli', {
  title: 'Blockbench CLI',
  author: 'aiTan',
  icon: 'icon',
  description: 'Blockbench CLI plugin',
  version: '1.0.0',
  variant: 'both',
  onload() {
    const { argv } = electron.getGlobal('process');
    const scriptArg = argv.find((arg) => arg.startsWith('--script'));
    if (typeof scriptArg !== 'undefined') {
      const scriptPath = scriptArg.replace('--script=', '');
      app.terminal.log('BB-CLI: importing script:', scriptPath);
      const script = import(scriptPath);
      script
        .then(async (module) => {
          await new Promise((resolve) => setTimeout(resolve, 1000));
          await module.script();
        })
        .finally(() => {
          window.close();
        });
    }
  },
});
