execute if score @s summit.climbing.min_target_rotation < @s summit.climbing.current_rotation if score @s summit.climbing.max_target_rotation > @s summit.climbing.current_rotation run tag @s remove summit.climbing.rotating
execute unless entity @s[tag=summit.climbing.rotating] run return run tag @s remove summit.climbing.entering
execute if score @s summit.climbing.max_target_rotation < @s summit.climbing.current_rotation run data merge storage summit.climbing:master {rotation: {direction: "-", operation: "remove"}}
execute if score @s summit.climbing.min_target_rotation > @s summit.climbing.current_rotation run data merge storage summit.climbing:master {rotation: {direction: "", operation: "add"}}
execute unless entity @s[tag=summit.climbing.entering] run data modify storage summit.climbing:master rotation.rotation_speed set from storage summit.climbing:master rotation.speeds.default
execute if entity @s[tag=summit.climbing.entering] run data modify storage summit.climbing:master rotation.rotation_speed set from storage summit.climbing:master rotation.speeds.entering
function summit.climbing:climb/player/rotate/rotate with storage summit.climbing:master rotation
