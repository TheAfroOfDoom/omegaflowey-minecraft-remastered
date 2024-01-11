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
const model_dir = paths.ajmodelPath.concat('/');
console.log('Target paths: ', paths);
const files = readdirSync(model_dir).filter((file) => file.includes('ajmodel'));
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
    const content = readFileSync(model_dir.concat(file), 'utf-8');
    const name = file.split('/').pop();
    const fileObj = {
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
  const model = JSON.parse(modelContent);
  model.animated_java.settings.resource_pack_mcmeta = paths.resourcePackPath;
  model.animated_java.exporter_settings[
    'animated_java:datapack_exporter'
  ].datapack_mcmeta = paths.dataPackPath;
  for (const texture of model.textures) {
    texture.path = texture.path.replaceAll('\\', '/');
    if (texture.path.includes('.minecraft')) {
      const x = texture.path.split('assets')[1];
      const newPath = `${paths.assetsPath}/assets${x}`;
      texture.path = newPath;
    } else if (texture.path.includes('resourcepack/assets')) {
      const x = texture.path.split('resourcepack/assets')[1];
      const resourcePackBase = paths.resourcePackPath.split('resourcepack')[0];
      const newPath = `${resourcePackBase}resourcepack/assets${x}`;
      texture.path = newPath;
    }
  }
  return JSON.stringify(model);
}

function getConfigPaths(configFile) {
  const config = JSON.parse(readFileSync(configFile), 'utf-8');
  const resourcePackPath = config.resource_pack_mcmeta;
  const dataPackPath = config.datapack_mcmeta;
  const assetsPath = config.assets_path;
  const ajmodelPath = config.ajmodel_folder;
  return { resourcePackPath, dataPackPath, assetsPath, ajmodelPath };
}