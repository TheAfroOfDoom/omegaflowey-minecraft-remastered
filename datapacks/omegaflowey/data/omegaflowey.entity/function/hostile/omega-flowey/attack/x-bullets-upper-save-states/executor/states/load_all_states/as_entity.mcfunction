# Terminate entities that we instead want to re-summon and initialize with the save-state'd data (in `./iterate`)
execute if entity @s[tag=!should-keep-original-entity] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/as_entity/terminate
execute if entity @s[tag=!should-keep-original-entity] run return 0

execute if entity @s[tag=attack-executor] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_state
execute if entity @s[tag=player-marker] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/player/marker/load_state with entity @s data
