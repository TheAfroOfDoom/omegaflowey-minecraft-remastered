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

1. Install [`Node.js >= 16.10`](https://nodejs.org/en/download)
2. Install [`Yarn 3.6.3`](https://v3.yarnpkg.com/getting-started/install) by running `corepack enable`
3. Initialize the repo by running `yarn`
4. Enable Yarn's Plug'n'Play with VSCode by running `yarn dlx @yarnpkg/sdks vscode`
5. Copy-paste `.env.EXAMPLE` and rename it to `.env`

   1. Replace all the paths in your new `.env` with paths on your local machine -- e.g. replacing `afro` with `<YOUR_USERNAME>`.

   2. Replace `ASSETS_DIR` by following these steps:

      1. Extract a vanilla assets folder for Blockbench to use by following this [reddit post](https://www.reddit.com/r/Minecraft/comments/wdx9mk/how_do_i_find_the_assets_folder_in_minecraft/iikxx3d/)

         1. A typical `.minecraft` assets folder is found at `%appdata%/.minecraft/versions`

         2. You will need some form of file extraction software -- e.g. [7-Zip](https://www.7-zip.org/)

         3. The file context to extract the `.jar` will look something like `7-Zip > Extract to "1.21\"`

      2. Set `ASSETS_DIR` to the path to your extracted version folder

         1. **Make sure to point to the doubly nested folder** -- e.g. `.../versions/1.21/1.21`

6. Run `yarn down` to extract the Minecraft world to your local Minecraft's `saves` directory (so you can open the world in-game)

</details>

---

<details>
  <summary><strong>Required Tools</strong></summary>

1. [Blockbench](https://www.blockbench.net/downloads) -- for 3D modelling
   - Install our Blockbench CLI plugin:
     - Open Blockbench, then go to `File > Plugins > Load Plugin From File` and select the `bb-cli.js` file from your local `omega-flowey-remastered` repo (`omega-flowey-remastered/package-scripts/modules/bb-cli.js`).
   - Install Animated Java from the Blockbench plugin store
     - see the [docs](https://animated-java.dev/docs/getting-started/installing-animated-java#installing-animated-java) for a detailed guide on how to do this.
   - Restart Blockbench after installing these plugins

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
  <summary><strong>Local Unit Testing (Optional)</strong></summary>

1. Download the [Fabric mod loader](https://fabricmc.net/) and install a new profile to your Minecraft launcher
2. Download the [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api/files) jar
3. Download the latest release jar of [`packtest`](https://modrinth.com/mod/packtest)
   1. You should probably download the same version that we're currently specifying in `./.github/workflows/datapack.yml`
4. Move the `Fabric API` and `packtest` jars into your `mods` folder in the Minecraft directory (typically `%appdata%/.minecraft/mods`)
5. Run the new profile in your Minecraft launcher to launch a (lightly) modded instance that's able to run `packtest`'s new commands designed for testing
   1. Try: `test runall`
   2. See `packtest`'s [README](https://github.com/misode/packtest) for full command documentation

</details>

---

### Development

#### Important scripts

Read the descriptions of the following scripts and run them when it is recommended to:

1. `yarn start export`: run the Animated Java (AJ) blueprint export script

   We recommend running `yarn start export` at least once, and every time changes to `.ajblueprint` files occur from new incoming commits.

   1. `yarn start export.force`

      Normally, `yarn start export` keeps track of what files have been exported on your local machine via each model's file hash.

      Sometimes this gets out of sync (for various, usually rare, reasons); in this case you can run `yarn start export.force` to have the auto-exporter forcibly re-export every model in the repository.

      This shouldn't be your default export script because it takes around a minute to run, but is completely safe to do if you're ever unconfident that your exported model files are correct.

2. `yarn start`: this keeps your local repository's content synced with your `.minecraft` directory -- datapack/resourcepack changes will reflect in-game

   We recommend keeping `yarn start` running at all times while working on the project.

3. `yarn down`: extracts the Minecraft world in the repo to your local Minecraft saves. This is important to run whenever there's changes to the world (see `yarn sync` above) or you want to hard-reset your world state, e.g. if you made any changes you want to discard.

4. `yarn sync`: zips your Minecraft world and copies it to the repo as (`world.zip`). This is how we handle version-control for the actual Minecraft world. This is especially important to run and commit if you make any _physical changes_ to the world like breaking/placing blocks.

5. `yarn lint`: runs Prettier, ESLint, and our custom linting rules on our files. Run this prior to pushing commits to save on our workflow hours.

#### Adding a new model/animation

1. Create a new Animated Java Rig via `File > New > Animated Java Blueprint`
2. Enter inputs for the following required fields:
   1. `Project Name`
   2. `Resource Pack`: select the `resourcepack` directory located at the root of the repository
   3. `Data Pack`: select the `datapacks/animated_java` directory starting from the root of the repository
3. Save the file with `CTRL + S` to somewhere appropriate under `resourcepack/assets/omega-flowey/models`
   1. **While the model is still a work-in-progress, append `_dev` to the filename so our auto-export scripts skip it**
      1. e.g. `housefly_dev.ajblueprint`
4. Export your model/animations by clicking `Animated Java > Export` at the top
5. When finished with the model, remove the `_dev` suffix from the filename (e.g. `housefly.ajblueprint`)
