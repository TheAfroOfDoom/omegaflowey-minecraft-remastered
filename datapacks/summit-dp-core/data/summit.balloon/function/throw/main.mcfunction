scoreboard players reset @s summit.drop_balloon
execute at @s anchored eyes positioned ^ ^ ^ as @n[tag=!summit.floating_balloon, predicate=summit.balloon:balloon_item_entity, distance=..5, type=minecraft:item] run function summit.balloon:throw/float
