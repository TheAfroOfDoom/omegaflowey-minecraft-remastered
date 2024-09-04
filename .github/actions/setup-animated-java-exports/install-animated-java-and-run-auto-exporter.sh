#!/bin/bash
set -x

export DISPLAY=:99

echo Download Blockbench debian package
curl -Lo Blockbench.deb $BLOCKBENCH_URL

echo Install Blockbench and required apps
sudo apt-get -fy install xvfb xdotool ./Blockbench.deb

echo Setup Blockbench args
BLOCKBENCH_PATH=blockbench
DATAPACK="$PWD/datapacks/animated_java"
RESOURCEPACK="$PWD/resourcepack"

echo Start headless X server
Xvfb $DISPLAY &

echo Start Blockbench and wait until initialized
# Use the export script to pass-in the CLI args automatically, the same way we do when we run
# `yarn start export` locally (for reproducability)
yarn start "export.run --enable-logging" &> blockbench.log & tail -f -n1 blockbench.log | grep -qe "Update for version"

echo Open dev tools and show console
xdotool key ctrl+shift+i
tail -f -n1 blockbench.log | grep -qe "Request Autofill.setAddresses failed."
xdotool key ctrl+shift+p
sleep 1
xdotool type 'show console'
sleep 1
xdotool key Return
sleep 1

echo Install Animated Java plugin
xdotool type --delay 30 "new Plugin().loadFromURL('${ANIMATED_JAVA_URL}');"
sleep 1 && xdotool key Return
tail -f -n1 blockbench.log | grep -qe "Minecraft fonts loaded!"

echo Install Blockbench CLI plugin
xdotool type --delay 30 'new Plugin().loadFromFile({ path:"./package-scripts/modules/bb-cli.js"});'
sleep 1 && xdotool key Return
tail -f -n1 blockbench.log | grep -qe "BB-CLI: importing script:"

echo Export repository\'s Animated Java models
tail -f -n1 blockbench.log | grep -qe "Finished exporting ajblueprints"
