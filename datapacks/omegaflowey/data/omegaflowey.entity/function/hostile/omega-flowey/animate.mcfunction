# ### TAG_SUMMIT_HARDCODED_ARENA_VOLUME
# execute as @e[ \
#   x=-186, dx=61, y=10, dy=46, z=47, dz=60, \
#   type=minecraft:item_display, \
#   tag=aj.rig_root, \
#   tag=omega-flowey-remastered \
# ] run function omegaflowey.entity:hostile/omega-flowey/animate/as_root
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/animate/as_root
