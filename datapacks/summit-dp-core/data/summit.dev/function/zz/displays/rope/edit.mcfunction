execute if entity @s[tag=!summit.rope_start] run return run function summit.dev:zz/displays/rope/edit/not_rope_error
execute if entity @s[tag=summit.updating] run return 0
data remove storage summit:temp target_pos
data modify storage summit:temp target_pos set from entity @s item.components."minecraft:custom_data".target_pos
execute summon marker run function summit.dev:zz/displays/rope/edit/create_destination_marker
data modify entity @s item.components."minecraft:custom_data".target set from storage gu:main out
tag @s add summit.updating
schedule function summit.dev:zz/displays/rope/loop 5 replace
