execute if entity @s[tag=summit.climbing.rotating] run function summit.climbing:climb/player/rotate/main
execute if entity @s[tag=summit.climbing.end, scores={summit.climbing.cooldown=7}] run function summit.climbing:climb/mannequin/stand with entity @s
execute if predicate summit.climbing:is_not_riding run function summit.climbing:climb/player/dismount with entity @s
execute if score @s summit.climbing.cooldown matches 1.. run return run function summit.climbing:climb/player/cooldown
execute if entity @s[tag=summit.climbing.end] run function summit.climbing:climb/player/exit/end with entity @s
tag @s add summit.climbing.current_main
execute if predicate summit.climbing:movement/up if score @s summit.climbing.cooldown matches ..0 run function summit.climbing:climb/player/movement_input {input: "up"}
execute if predicate summit.climbing:movement/down if score @s summit.climbing.cooldown matches ..0 run function summit.climbing:climb/player/movement_input {input: "down"}
execute if predicate summit.climbing:movement/left if score @s summit.climbing.cooldown matches ..0 run function summit.climbing:climb/player/movement_input {input: "left"}
execute if predicate summit.climbing:movement/right if score @s summit.climbing.cooldown matches ..0 run function summit.climbing:climb/player/movement_input {input: "right"}
tag @s remove summit.climbing.current_main
