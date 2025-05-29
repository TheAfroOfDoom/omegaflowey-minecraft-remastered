const { readdirSync, readFileSync } = require('fs');
const { resolve } = require('path');
const { ajblueprintDir } = require(`./shared-consts`);

const MODEL_FILE_EXTENSION = '.ajblueprint';

const getAllModelFiles = async () =>
  (await getFiles(ajblueprintDir)).filter((file) =>
    file.endsWith(MODEL_FILE_EXTENSION),
  );

async function getFiles(dir) {
  const dirents = readdirSync(dir, { withFileTypes: true });
  const files = await Promise.all(
    dirents.map((dirent) => {
      const res = resolve(dir, dirent.name);
      return dirent.isDirectory() ? getFiles(res) : res;
    }),
  );
  return Array.prototype.concat(...files);
}

const main = async () => {
  const files = await getAllModelFiles();

  const res = [];

  for (const file of files) {
    const content = readFileSync(file, 'utf-8');
    const model = JSON.parse(content);

    let count = 0;
    let nextBones = model.outliner.filter((bone) => bone.export);

    while (nextBones.length > 0) {
      count += nextBones.length;
      const children = [];
      for (const bone of nextBones) {
        children.push(
          ...bone.children.filter((c) => typeof c !== 'string' && c.export),
        );
      }
      nextBones = children;
    }

    const name = model.blueprint_settings.export_namespace;

    res.push({ name, boneCount: count });
  }

  console.log(res.sort((a, b) => b.boneCount - a.boneCount));
};

main();
