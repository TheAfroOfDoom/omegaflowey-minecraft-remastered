# Summit models
function animated_java:omegaflowey_summitpetalpiperight/remove/all
# TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=-186, dx=91, y=12, dy=93, z=12, dz=95, \
  type=minecraft:item_display, \
  tag=tv_screen.outside, \
  tag=aj.tv_screen.root, \
  tag=omega-flowey-remastered \
] run function animated_java:tv_screen/remove/this
