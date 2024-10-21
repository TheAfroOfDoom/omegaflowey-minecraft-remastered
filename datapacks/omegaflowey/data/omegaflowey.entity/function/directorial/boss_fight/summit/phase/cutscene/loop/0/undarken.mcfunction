# move Flowey models -30 Z blocks over 294 seconds
### TAG_SUMMIT_HARDCODED_ARENA_VOLUME (and +31 blocks in Z direction)
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/animate/intro/brighten/as_root

$execute as $(arena_box_uuid) run function animated_java:omegaflowey_arena_box/variants/default/apply
