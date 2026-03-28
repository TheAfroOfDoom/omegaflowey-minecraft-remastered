execute on passengers if entity @s[type=minecraft:item_display] run data modify entity @s view_range set value 0
execute if entity @s[tag= is_eastward] run teleport @s ~ ~ -89.0
execute if entity @s[tag=!is_eastward] run teleport @s ~ ~ -42.0
tag @s add is_invisible_frame_0
