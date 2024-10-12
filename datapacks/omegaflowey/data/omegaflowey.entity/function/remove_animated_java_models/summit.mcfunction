# Summit models
function animated_java:omegaflowey_flowercontributor/remove/all
function animated_java:omegaflowey_summitflowerbed/remove/all
function animated_java:omegaflowey_summitpetalpipeleft/remove/all
function animated_java:omegaflowey_summitpetalpiperight/remove/all
function animated_java:omegaflowey_summitpetalpipetop/remove/all
# TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=-186, dx=91, y=12, dy=93, z=12, dz=95, \
  type=minecraft:item_display, \
  tag=tv_screen.outside, \
  tag=aj.omegaflowey_tv_screen.root, \
  tag=omega-flowey-remastered \
] run function animated_java:omegaflowey_tv_screen/remove/this
