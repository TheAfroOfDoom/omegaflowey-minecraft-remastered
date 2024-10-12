execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize

# TODO(198): save-states homing vines are broken for now
# execute if entity @s[tag=homing-vines-save-states] as @e[tag=attack-bullet-new] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/bullet/initialize
# execute if entity @s[tag=x-bullets-upper-save-states] as @e[tag=attack-bullet-new] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/homing-vines
