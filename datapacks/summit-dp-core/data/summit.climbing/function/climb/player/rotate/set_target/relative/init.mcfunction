tag @s add summit.climbing.rotating
$scoreboard players $(operation) @s summit.climbing.target_rotation $(target)
scoreboard players operation @s summit.climbing.max_target_rotation = @s summit.climbing.target_rotation
scoreboard players operation @s summit.climbing.min_target_rotation = @s summit.climbing.target_rotation
function summit.climbing:climb/player/rotate/set_target/relative/offset with storage summit.climbing:master
