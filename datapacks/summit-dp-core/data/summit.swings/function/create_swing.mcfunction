execute if entity @s[y_rotation=135..180] run data modify storage summit:temp swings.rotation set value 180
execute if entity @s[y_rotation=-180..-135] run data modify storage summit:temp swings.rotation set value 180
execute if entity @s[y_rotation=-135..-45] run data modify storage summit:temp swings.rotation set value 90
execute if entity @s[y_rotation=-45..45] run data modify storage summit:temp swings.rotation set value 180
execute if entity @s[y_rotation=45..135] run data modify storage summit:temp swings.rotation set value 90
execute if data storage summit:temp swings{rotation: 90} run data modify storage summit:temp swings.axis_tag set value "summit.x_axis"
execute if data storage summit:temp swings{rotation: 180} run data modify storage summit:temp swings.axis_tag set value "summit.z_axis"
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~6 ~ summon minecraft:item_display run function summit.swings:swing/setup with storage summit:temp swings
