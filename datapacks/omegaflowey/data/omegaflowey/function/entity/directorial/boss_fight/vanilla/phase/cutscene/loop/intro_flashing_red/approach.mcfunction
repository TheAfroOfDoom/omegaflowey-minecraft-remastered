# move Flowey models +29.4 Z blocks over 294 seconds
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=!aj.omegaflowey_arena_box_vanilla.root, \
  tag=omega-flowey-remastered \
] at @s run teleport @s ~ ~ ~0.1
