# Summit models
function aj:omegaflowey_flowercontributor/remove/all
function aj:omegaflowey_summitflowerbed/remove/all
function aj:omegaflowey_summitpetalpipeleft/remove/all
function aj:omegaflowey_summitpetalpiperight/remove/all
function aj:omegaflowey_summitpetalpipetop/remove/all
# TAG_OUTSIDE_TVSCREEN_HARDCODED
execute as @e[ \
  x=-123.47, y=87.25, z=33.35, \
  distance=..1, \
  type=minecraft:item_display, \
  tag=aj.omegaflowey_tv_screen.root, \
  tag=!tv_screen.boss_fight, \
  tag=!tv_screen.soul, \
  tag=omega-flowey-remastered \
] run function aj:omegaflowey_tv_screen/remove/this
