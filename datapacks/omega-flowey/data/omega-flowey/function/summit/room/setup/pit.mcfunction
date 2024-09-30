function animated_java:summit_flower_bed/remove/all
execute positioned -109.5 41.0 33.5 rotated 180 0 run \
  function animated_java:summit_flower_bed/summon/default

execute unless score #omegaflowey.setup_flags.dont_place_blocks global.flag matches 1 run fill -113 319 35 -107 319 29 minecraft:barrier
execute unless score #omegaflowey.setup_flags.dont_place_blocks global.flag matches 1 run fill -113 318 35 -107 318 29 minecraft:pink_shulker_box[facing=up]
