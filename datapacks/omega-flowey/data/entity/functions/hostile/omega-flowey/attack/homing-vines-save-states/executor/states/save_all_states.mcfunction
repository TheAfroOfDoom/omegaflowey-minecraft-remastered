# Initialize empty list for saved states
data modify entity @s data.saved_states set value []

# store executor UUID so attack entities can reference it directly
function gu:generate
data modify storage attack:homing-vines-save-states executor_uuid set from storage gu:main out

execute as @e[tag=should-save-state] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/save_all_states/as_entity
execute as @a[team=player] at @s run function entity:hostile/omega-flowey/attack/homing-vines-save-states/player/states/save_state
