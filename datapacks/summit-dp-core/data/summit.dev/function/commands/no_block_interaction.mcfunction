scoreboard players set $dummy summit.commands.dummy 0
execute store success score $dummy summit.commands.dummy run attribute @s minecraft:block_interaction_range modifier value get summit.dev.no_interact
execute if score $dummy summit.commands.dummy matches 1.. run attribute @s minecraft:block_interaction_range modifier remove summit.dev.no_interact
execute if score $dummy summit.commands.dummy matches 0 run attribute @s minecraft:block_interaction_range modifier add summit.dev.no_interact -1 add_multiplied_total
