# Terminate entities that we instead want to re-summon and initialize with the save-state'd data (in `./iterate`)
execute if entity @s[tag=!should-keep-original-entity] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/load_all_states/as_entity/terminate
execute if entity @s[tag=!should-keep-original-entity] run return 0

execute if entity @s[tag=attack-executor] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/load_state
execute if entity @s[tag=player-marker] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/player/marker/load_state with entity @s data
