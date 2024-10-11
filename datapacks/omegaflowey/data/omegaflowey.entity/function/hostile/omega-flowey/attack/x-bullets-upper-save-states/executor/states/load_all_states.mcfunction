execute as @e[tag=should-save-state] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/as_entity

# iterate through saved states for entities we need to resummon
function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/iterate

execute as @e[type=minecraft:marker,tag=boss_fight] run function omegaflowey.entity:directorial/boss_fight/music/toggle/boss_fight_vanilla_attack_phase_repeat

function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/terminate_unwanted_entities

function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/show_title
