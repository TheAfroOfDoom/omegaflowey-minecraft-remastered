function animated_java:omegaflowey_summitflowerbed/remove/all
execute positioned -109.5 41.0 33.5 rotated 180 0 run \
  function animated_java:omegaflowey_summitflowerbed/summon/default

# player flowers
function animated_java:omegaflowey_flowercontributor/remove/all
execute positioned -110.5 41.0 38.5 rotated -168 0 run function animated_java:omegaflowey_flowercontributor/summon/default
execute positioned -109.5625 41.0 25.625 rotated -20 0 run function animated_java:omegaflowey_flowercontributor/summon/adahy
execute positioned -108.0 41.0 25.5 rotated 0 0 run function animated_java:omegaflowey_flowercontributor/summon/natia
execute positioned -106.1875 41.0 25.5625 rotated 20 0 run function animated_java:omegaflowey_flowercontributor/summon/wes

function omegaflowey.main:summit/room/pit/setup/text_displays

execute unless score #omegaflowey.setup_flags.dont_place_blocks omegaflowey.global.flag matches 1 run fill -113 319 35 -107 319 29 minecraft:barrier
execute unless score #omegaflowey.setup_flags.dont_place_blocks omegaflowey.global.flag matches 1 run fill -113 318 35 -107 318 29 minecraft:pink_shulker_box[facing=up]
