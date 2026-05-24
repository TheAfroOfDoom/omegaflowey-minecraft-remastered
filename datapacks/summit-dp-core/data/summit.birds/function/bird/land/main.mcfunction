execute store result score $gametime summit.temp run time query gametime
execute as @e[tag=!summit.new_bird, tag=summit.coming_bird, type=minecraft:item_display] if score @s summit.bird_timer <= $gametime summit.temp run function summit.birds:bird/land/on_entity
