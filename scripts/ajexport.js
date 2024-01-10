// With thanks to elenterius on discord for troubleshooting
// https://discord.com/channels/314078526104141834/1189404550986211329/1189517519262855229

/*
global Project, loadModelFile, AnimatedJava
*/

const { readdirSync, readFileSync } = require('fs');

const consoleLogJson = (args) => {
  console.log(JSON.stringify(args));
};

if (typeof AnimatedJava === 'undefined') {
  throw new Error('Failed to load Animated Java plugin before CLI plugin');
}
const paths = getConfigPaths(
  'C:\\Users\\Aidan\\Documents\\Media_Storage\\active_projects\\flowey_remaster\\omega-flowey-minecraft-remastered\\scripts\\config.json',
);
const dir = paths[3].concat('/');
console.log('Target paths: ', paths);
const files = readdirSync(dir).filter((file) => file.includes('ajmodel'));
const exportNextFile = () => {
  if (Project) {
    Project.close();
  }
  const file = files.pop();
  if (typeof file === 'undefined') {
    return;
  }
  consoleLogJson({ file });
  if (file.includes('ajmodel')) {
    let content = readFileSync(dir.concat(file), 'utf-8');
    let name = file.split('/').pop();
    let fileObj = {
      path: file,
      content: injectModelPackPaths(content, paths),
      name: name,
    };
    loadModelFile(fileObj);
    AnimatedJava.API.safeExportProject(exportNextFile);
  }
};
exportNextFile();

function injectModelPackPaths(modelContent, paths) {
  let f = JSON.parse(modelContent);
  f.animated_java.settings.resource_pack_mcmeta = paths[0];
  f.animated_java.exporter_settings[
    'animated_java:datapack_exporter'
  ].datapack_mcmeta = paths[1];
  for (const texture of f.textures) {
    texture.path = texture.path.replaceAll('\\', '/');
    if (texture.path.includes('.minecraft')) {
      const x = texture.path.split('assets')[1];
      const newPath = `${paths[2]}/assets${x}`;
      texture.path = newPath;
    } else if (texture.path.includes('resourcepack/assets')) {
      const x = texture.path.split('resourcepack/assets')[1];
      const resourcePackBase = paths[0].split('resourcepack')[0];
      const newPath = `${resourcePackBase}resourcepack/assets${x}`;
      texture.path = newPath;
    }
  }
  return JSON.stringify(f);
}

function getConfigPaths(configFile) {
  const f = JSON.parse(readFileSync(configFile).toString());
  const resourcePackPath = f.resource_pack_mcmeta;
  const dataPackPath = f.datapack_mcmeta;
  const assetsPath = f.assets_path;
  const ajmodelPath = f.ajmodel_folder;
  return [resourcePackPath, dataPackPath, assetsPath, ajmodelPath];
}
