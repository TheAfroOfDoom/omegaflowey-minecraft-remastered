import { app, BrowserWindow } from "electron";
import { resolve } from "path";

const createWindow = () => {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
  });

  win.loadFile(resolve("./src/index.html"));
};

app.whenReady().then(() => {
  createWindow();
});
