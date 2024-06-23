# **LOOKING FOR CONTRIBUTORS**

If you have experience with or are looking to get into Minecraft mapmaking and are interested in contributing to the map, reach out to us! we're looking for people to help with the following items, in order of priority:

1. **Blockbench modelling**
2. Animating Java
3. Datapacks

---

# Omega Flowey in Minecraft - Remastered

Back in early 2016 I released `Omega Flowey in Minecraft`.

- [original video](https://youtu.be/5Q8OkmrZom8)
- [original thread](https://www.reddit.com/r/Undertale/comments/4a9jht/spoilers_omega_flowey_boss_fight_in_minecraft/)

Since then I've gained a lot of skills both in Minecraft map development and in programming generally. This repo will store any and everything relating to development of a remaster of the original map for modern Minecraft version(s) with better gameplay, performance, and visuals.

## Contributing

### Setup

---

<details>
  <summary><strong>Workspace</strong></summary>

1.  Install [`Node.js >= 16.10`](https://nodejs.org/en/download)
2.  Install [`Yarn 3.6.3`](https://v3.yarnpkg.com/getting-started/install) by running `corepack enable`
3.  Initialize the repo by running `yarn`
4.  Enable Yarn's Plug'n'Play with VSCode by running `yarn dlx @yarnpkg/sdks vscode`
5.  Copy-paste `.env.EXAMPLE` and rename it to `.env`

    1.  Replace all the paths in there with paths on your local machine -- e.g. replacing `afro` with `<YOUR_USERNAME>`.

    Most of these variables are pretty straightforward except for `ASSETS_DIR` -- you'll want to follow this [reddit post](https://www.reddit.com/r/Minecraft/comments/wdx9mk/how_do_i_find_the_assets_folder_in_minecraft/iikxx3d/) to extract a vanilla assets folder that you can point `ASSETS_DIR` to

</details>

---

<details>
  <summary><strong>Required Tools</strong></summary>

1. [Blockbench](https://www.blockbench.net/downloads) -- for 3D modelling
   - Install our Blockbench CLI plugin:
     - Open Blockbench, then go to `File > Plugins > Load Plugin From File` and select the `bb-cli.js` file from your local `omega-flowey-remastered` repo (`omega-flowey-remastered/package-scripts/modules/bb-cli.js`).

</details>

---

<details>
  <summary><strong>Recommended Tools (Optional)</strong></summary>

Install the following apps:

1. [paint.net](https://www.getpaint.net/download.html) -- for image editing
2. [ScreenToGif](https://www.screentogif.com/) -- lightweight GIF recorder
3. [DaVinci Resolve](https://www.blackmagicdesign.com/event/davinciresolvedownload) -- for video editing / frame-by-frame video analysis (of the original fight in Undertale)

We also recommend using [blockcolors.app](https://blockcolors.app/) to get a representative vanilla block texture for a desired color while texturing models.

</details>

---

<details>
  <summary><strong>Testing</strong></summary>

1. Download the [Fabric mod loader](https://fabricmc.net/) and install a new profile to your Minecraft launcher
2. Download the [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api/files) jar
3. Download the latest release jar of [`packtest`](https://github.com/misode/packtest/releases)
   1. You should probably download the same version that we're currently specifying in `./.github/workflows/validate.yml`
4. Move the `Fabric API` and `packtest` jars into your `mods` folder in the Minecraft directory (typically `%appdata%/.minecraft/mods`)
5. Run the new profile in your Minecraft launcher to launch a (lightly) modded instance that's able to run `packtest`'s new commands designed for testing
   1. Try: `test runall`
   2. See `packtest`'s [README](https://github.com/misode/packtest) for full command documentation

</details>

---

### Development

#### Important scripts

Read the descriptions of the following scripts and run them when it is recommended to:

1. **NOTE**: We are currently migrating to Animated Java 1.0.0. The AJ auto-exporter has not yet been updated to support this. You will have to update model export files by manually clicking `Export` in Blockbench until the auto-exporter is updated.

   <s> `yarn start export`: run the AJ model export script

   1. add `ELECTRON_ENABLE_LOGGING=1` to your `.env` file to enable log-passthrough from Blockbench's renderer process to the main process. **Run this if your `watch.models` script (from `yarn start watch.experimental`) runs into an error while exporting AJ models.**

   We recommend running `yarn start export` at least once, and every time changes to `.ajmodel` files occur from new incoming commits.

   </s>

2. `yarn start`: this keeps your local repository's content synced with your `.minecraft` directory -- datapack/resourcepack changes will reflect in-game

   1. if you run `yarn start watch.experimental`, it also watches `.ajmodel` files and runs our auto-exporter on them -- this reads all `.ajmodel` files in your local repo and runs Animated Java's `Export Project` function on them.
      1. we specifically _do not_ commit AJ's exported files to the repo since they are _very large_
      2. the `watch.models` script _will not_ work if you already have Blockbench open, so don't expect it to do anything while that's the case
      3. its a little janky and experimental still, so \*\*we recommend manually running `yarn start export` if you run into issues relating to Animated Java export files (missing models, animations, attacks not playing properly)

   We recommend keeping `yarn start` running at all times while working on the project.

3. `yarn sync`: zips your Minecraft world and copies it to the repo as (`world.zip`). This is how we handle version-control for the actual Minecraft world. This is especially important to run and commit if you make any _physical changes_ to the world like breaking/placing blocks.

4. `yarn lint`: runs Prettier, ESLint, and our custom linting rules on our files. Run this prior to pushing commits to save on our workflow hours.

#### Adding a new model/animation

1. Create a new Animated Java Rig via `File > New > Animated Java Rig`
2. Enter inputs for the following required fields:
   1. `Project Name`
   2. `Resource Pack`: select the `pack.mcmeta` file located in the repository at `resourcepack/pack.mcmeta`
   3. `Data Pack`: select the `pack.mcmeta` file located in the repository at `datapacks/animated_java/pack.mcmeta`
3. Save the file with `CTRL + S` to somewhere appropriate under `resourcepack/assets/omega-flowey/models`
   1. **While the model is still a work-in-progress, append `_dev` to the filename so our auto-export scripts skip it**
      1. e.g. `housefly_dev.ajmodel`
4. Export your model/animations by clicking `Animated Java > Export Project` at the top
5. When finished with the model, remove the `_dev` suffix from the filename (e.g. `housefly.ajmodel`)
