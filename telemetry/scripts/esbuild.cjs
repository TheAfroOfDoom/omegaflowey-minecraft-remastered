const { build } = require("esbuild");
build({
  entryPoints: ["main.js"],
  outfile: "dist/main.js",
  bundle: true,
  platform: "node",
  packages: "external",
}).then(() => {
  console.log("done building");
});
