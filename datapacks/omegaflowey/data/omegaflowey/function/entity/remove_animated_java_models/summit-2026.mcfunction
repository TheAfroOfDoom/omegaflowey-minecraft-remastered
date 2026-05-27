# Summit models
function aj:omegaflowey_balloon_bundle/remove/all
function aj:omegaflowey_flowercontributor/remove/all
function aj:omegaflowey_summitflowerbed/remove/all
function aj:omegaflowey_summitpetalpipeleft/remove/all
function aj:omegaflowey_summitpetalpiperight/remove/all
function aj:omegaflowey_summitpetalpipetop/remove/all
# NOTE: TAG_SUMMIT_2026_HARDCODED, TAG_OUTSIDE_TVSCREEN_HARDCODED
execute as @e[ \
  x=95.375, y=98.125, z=-11.0, \
  distance=..1, \
  type=minecraft:item_display, \
  tag=aj.omegaflowey_tv_screen.root, \
  tag=!tv_screen.boss_fight, \
  tag=!tv_screen.soul, \
  tag=omega-flowey-remastered \
] run function aj:omegaflowey_tv_screen/remove/this
