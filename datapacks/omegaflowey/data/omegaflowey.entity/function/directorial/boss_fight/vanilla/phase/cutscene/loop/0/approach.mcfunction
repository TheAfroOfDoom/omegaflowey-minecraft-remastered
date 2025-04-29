# move Flowey models +29.4 Z blocks over 294 seconds
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] at @s run teleport @s ~ ~ ~0.1
