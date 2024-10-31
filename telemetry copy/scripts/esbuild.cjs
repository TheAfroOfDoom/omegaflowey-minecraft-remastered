const { context } = require("esbuild");

async function main() {
  const ctx = await context({
    entryPoints: ["src/main.ts"],
    outfile: "dist/main.js",
    bundle: true,
    platform: "node",
    packages: "external",
    plugins: [
      {
        name: "rebuild-notify",
        setup(build) {
          build.onEnd((result) => {
            console.log(`build ended with ${result.errors.length} errors`);
          });
        },
      },
    ],
  });

  await ctx.watch();

  console.log("esbuild watching");
}

main();
