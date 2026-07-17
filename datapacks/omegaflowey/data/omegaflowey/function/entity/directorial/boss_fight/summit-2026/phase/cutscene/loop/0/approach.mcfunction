# move Flowey models -29.4 Z blocks over 294 seconds
### TAG_SUMMIT_2026_HARDCODED_ARENA_VOLUME (and -31 blocks in X direction)
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=omega-flowey-remastered, \
  tag=!aj.omegaflowey_arena_box.root, \
  predicate=summit.booth:omegaflowey/in_bounding_box/arena_stretched_negative_dx \
] at @s run teleport @s ~0.1 ~ ~
