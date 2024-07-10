execute if entity @s[tag=attack.random.consider_previous_trials] run function entity:hostile/omega-flowey/attack/random/remove_previous_tags
execute if entity @s[tag=attack.random.consider_previous_trials] run tag @s add attack.random.previous_attack.x-bullets-upper-save-states

# Start attack
function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/start
