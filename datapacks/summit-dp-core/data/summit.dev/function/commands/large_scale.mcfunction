scoreboard players set $dummy summit.commands.dummy 0
execute store success score $dummy summit.commands.dummy run attribute @s minecraft:scale modifier value get summit.dev.increase_scale
execute if score $dummy summit.commands.dummy matches 1.. run attribute @s minecraft:scale modifier remove summit.dev.increase_scale
execute if score $dummy summit.commands.dummy matches 1.. run attribute @s minecraft:movement_speed modifier remove summit.dev.increase_speed
execute if score $dummy summit.commands.dummy matches 0 run attribute @s minecraft:scale modifier add summit.dev.increase_scale 2 add_multiplied_total
execute if score $dummy summit.commands.dummy matches 0 run attribute @s minecraft:movement_speed modifier add summit.dev.increase_speed 2 add_multiplied_total
