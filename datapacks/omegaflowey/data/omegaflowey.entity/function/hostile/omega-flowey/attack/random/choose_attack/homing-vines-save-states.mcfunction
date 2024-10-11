execute if entity @s[tag=attack.random.consider_previous_trials] run function entity:hostile/omega-flowey/attack/random/remove_previous_tags
execute if entity @s[tag=attack.random.consider_previous_trials] run tag @s add attack.random.previous_attack.homing-vines-save-states

# Start attack
function entity:hostile/omega-flowey/attack/homing-vines-save-states/start
