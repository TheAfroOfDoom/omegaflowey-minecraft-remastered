const { app, BrowserWindow } = require('electron');
const { resolve } = require('path');

const createWindow = () => {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
  });

  win.loadFile(resolve('./index.html'));
};

app.whenReady().then(() => {
  createWindow();
});
