# Initialize empty list for saved states
data modify entity @s data.saved_states set value []

execute as @e[tag=should-save-state] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/save_all_states/as_entity
execute as @a[tag=omegaflowey.player.fighting_flowey] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/player/states/save_state

function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/save_all_states/show_title
