// With thanks to fetchbot on discord for the code

/*
global BBPlugin, electron, window
*/

BBPlugin.register('bb-cli', {
  title: 'Blockbench CLI',
  author: 'aiTan',
  icon: 'icon',
  description: 'Blockbench CLI plugin (in testing)',
  version: '1.0.0',
  variant: 'both',
  onload() {
    console.log('BB-CLI loading...');
    let [...ARGV] = electron.getGlobal('process').argv;
    let scriptIndicator = ARGV.indexOf('--bb-cli');
    if (scriptIndicator !== -1) {
      const scriptPath = ARGV[scriptIndicator + 1];
      console.log('Importing...', scriptPath);
      const script = import(scriptPath);
      console.log(script);
      script
        .then(async (module) => {
          await new Promise((resolve) => setTimeout(resolve, 1000));
          await module.script();
          window.close();
        })
        .catch((err) => {
          console.log(err);
          //window.close();
        });
    }
  },
});
