execute store result score $time summit.temp run schedule function summit.birds:spawner/scatter/shrink/main 29 append
execute store result score $gametime summit.temp run time query gametime
execute as @e[tag=summit.scatter_bird, type=minecraft:item_display] if score @s summit.bird_timer <= $gametime summit.temp at @s run function summit.birds:spawner/scatter/go/on_entity
