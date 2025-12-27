# move Flowey models -29.4 Z blocks over 294 seconds
### TAG_SUMMIT_HARDCODED_ARENA_VOLUME (and +31 blocks in Z direction)
execute as @e[ \
  x=-186, dx=61, y=10, dy=46, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] at @s run teleport @s ~ ~ ~-0.1
