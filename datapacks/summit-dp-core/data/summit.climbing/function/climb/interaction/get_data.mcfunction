$data modify entity @s data.camera_distance set from storage summit.climbing:paths paths.$(id).camera_distance
$data modify entity @s data.sound set from storage summit.climbing:paths paths.$(id).sound
$execute unless data storage summit.climbing:paths paths.$(id).movement_cooldown run return run scoreboard players set @p[tag=summit.climbing.current_main,distance=..32] summit.climbing.max_cooldown 8
$execute store result score @p[tag=summit.climbing.current_main,distance=..32] summit.climbing.max_cooldown run data get storage summit.climbing:paths paths.$(id).movement_cooldown
