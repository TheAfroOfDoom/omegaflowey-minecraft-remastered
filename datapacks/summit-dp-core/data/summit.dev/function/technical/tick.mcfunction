schedule function summit.dev:technical/tick 1
execute as @a at @s run function summit.dev:entity/player/tick
execute as @e[tag=summit.gondola, type=item_display] at @s run function summit.dev:zz/gondola/tick
execute as @e[type=item_display, tag=summit.vehicle] at @s run function summit.dev:zz/vehicle/tick
