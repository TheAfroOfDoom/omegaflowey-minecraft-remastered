execute store result score $gametime summit.temp run time query gametime
execute as @e[tag=summit.shrinking_bird, tag=summit.going_bird, type=minecraft:item_display] if score @s summit.bird_timer <= $gametime summit.temp run kill @s
