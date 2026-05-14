scoreboard players operation $direction_check summit.temp = $source_rotation_abs summit.temp
scoreboard players operation $direction_check summit.temp += @s summit.zipline_rotation_abs
execute unless score $direction_check summit.temp matches 179..181 run return fail
scoreboard players set $colliding summit.temp 1
function summit.zipline:collision/collide
