# move Flowey models -29.4 Z blocks over 294 seconds
### TAG_SUMMIT_2026_HARDCODED_ARENA_VOLUME (and -31 blocks in X direction)
execute as @e[ \
  x=5, dx=91, y=-6, dy=45, z=-44, dz=61, \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] at @s run teleport @s ~0.1 ~ ~
