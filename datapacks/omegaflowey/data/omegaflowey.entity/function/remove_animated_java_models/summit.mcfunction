# Summit models
function animated_java:omegaflowey_flowercontributor/remove/all
function animated_java:omegaflowey_summitflowerbed/remove/all
function animated_java:omegaflowey_summitpetalpipeleft/remove/all
function animated_java:omegaflowey_summitpetalpiperight/remove/all
function animated_java:omegaflowey_summitpetalpipetop/remove/all
# TAG_OUTSIDE_TVSCREEN_HARDCODED
execute as @e[ \
  x=-123.47, y=87.25, z=33.35, \
  distance=..1, \
  type=minecraft:item_display, \
  tag=aj.omegaflowey_tv_screen.root, \
  tag=!tv_screen.boss_fight, \
  tag=!tv_screen.soul, \
  tag=decorative, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function animated_java:omegaflowey_tv_screen/remove/this
