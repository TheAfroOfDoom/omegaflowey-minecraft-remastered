execute as @e[type=item_display, tag=summit.rope_start] at @s run function summit.dev:zz/displays/rope/target_entity with entity @s item.components."minecraft:custom_data"
execute if entity @e[type=item_display, tag=summit.rope_start, tag=summit.updating, limit=1] run schedule function summit.dev:zz/displays/rope/loop 5 replace
