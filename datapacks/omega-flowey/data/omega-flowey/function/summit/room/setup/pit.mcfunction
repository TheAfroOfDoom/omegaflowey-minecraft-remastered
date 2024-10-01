function animated_java:summit_flower_bed/remove/all
execute positioned -109.5 41.0 33.5 rotated 180 0 run \
  function animated_java:summit_flower_bed/summon/default

# player flowers
function animated_java:flower_contributor/remove/all
execute positioned -110.5 41.0 38.5 rotated -168 0 run function animated_java:flower_contributor/summon/default
execute positioned -110.5 41.0 26.25 rotated -20 0 run function animated_java:flower_contributor/summon/adahy
execute positioned -108.0 41.0 25.5 rotated 0 0 run function animated_java:flower_contributor/summon/natia
# this last one needs to be Wes's skin
execute positioned -105.5 41.0 26.0 rotated 20 0 run function animated_java:flower_contributor/summon/adahy

execute unless score #omegaflowey.setup_flags.dont_place_blocks global.flag matches 1 run fill -113 319 35 -107 319 29 minecraft:barrier
execute unless score #omegaflowey.setup_flags.dont_place_blocks global.flag matches 1 run fill -113 318 35 -107 318 29 minecraft:pink_shulker_box[facing=up]
