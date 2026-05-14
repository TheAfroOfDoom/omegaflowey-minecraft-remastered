tag @s add summit_flag
data modify entity @s teleport_duration set value 10
scoreboard players set @s summit.flag.height 0
$scoreboard players set @s summit.flag.pole_height $(raise_height)
execute if data storage summit:temp summit_flag_macro{wind_sync: 1b} run tag @s add summit_flag.wind_sync
