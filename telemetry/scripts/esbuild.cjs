const { context } = require("esbuild");

async function main() {
  const ctx = await context({
    entryPoints: ["src/main.ts"],
    outfile: "dist/main.js",
    bundle: true,
    platform: "node",
    packages: "external",
  });

  await ctx.watch();

  console.log("esbuild watching");
}

main();
