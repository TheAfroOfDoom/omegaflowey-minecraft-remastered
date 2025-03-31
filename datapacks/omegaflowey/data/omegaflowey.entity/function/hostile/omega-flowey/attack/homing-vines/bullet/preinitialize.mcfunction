execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize

# execute if entity @s[tag=homing-vines-save-states] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/bullet/initialize
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 3 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/homing-vines
