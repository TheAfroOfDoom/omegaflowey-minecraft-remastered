schedule function summit.dev:technical/tick 1
execute as @a at @s run function summit.dev:entity/player/tick
execute as @e[tag=summit.gondola, type=item_display] at @s run function summit.dev:zz/gondola/tick
