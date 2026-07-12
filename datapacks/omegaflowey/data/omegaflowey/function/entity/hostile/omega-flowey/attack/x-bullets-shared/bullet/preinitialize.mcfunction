function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-shared/bullet/initialize/shared

## x-bullets-upper: 1..2
# Split between `x-bullets-upper-save-states` logic and normal `x-bullets-upper` logic initialization
execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 1 run \
  function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/bullet/initialize
# TODO(324): re-enable this function call
# execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 2 run \
#   function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/x-bullets-upper
# TODO(324): re-enable this function call
# execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 4 run \
#   function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/states/load_state
# TODO(324): re-enable this function call
# execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 5 run \
#   function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper-weak/bullet/initialize

## x-bullets-lower: 3
execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 3 run \
  function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/bullet/initialize
# TODO(324): re-enable this function call
# execute if score #omegaflowey.attack.xbullets.type omegaflowey.global.flag matches 6 run \
#   function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower-weak/bullet/initialize
