import { app, BrowserWindow } from "electron";
import { resolve } from "path";
import { parseData } from "./decode";

const createWindow = () => {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
  });

  win.loadFile(resolve("./src/index.html"));
};

app.whenReady().then(async () => {
  createWindow();

  console.log(await parseData("./data/raw.txt"));
});
