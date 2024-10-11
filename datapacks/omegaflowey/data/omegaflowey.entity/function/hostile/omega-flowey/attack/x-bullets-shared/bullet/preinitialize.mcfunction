function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-shared/bullet/initialize/shared

## x-bullets-upper: 1..2
# Split between `x-bullets-upper-save-states` logic and normal `x-bullets-upper` logic initialization
execute if score #omegaflowey.attack.xbullets.type global.flag matches 1 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/bullet/initialize
execute if score #omegaflowey.attack.xbullets.type global.flag matches 2 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/x-bullets-upper

## x-bullets-lower: 3
execute if score #omegaflowey.attack.xbullets.type global.flag matches 3 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/bullet/initialize
