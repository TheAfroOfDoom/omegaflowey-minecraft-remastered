### TAG_SUMMIT_2026_HARDCODED_ARENA_VOLUME
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=omega-flowey-remastered, \
  predicate=summit.booth:omegaflowey/in_bounding_box/arena \
] run function omegaflowey:entity/hostile/omega-flowey/animate/as_root
