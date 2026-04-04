# hacky way to set `view_range: 1` 2 frames after we set it to 0 (see `is_invisible_frame_0`)
execute if entity @s[tag=is_invisible_frame_1] on passengers run data modify entity @s view_range set value 1
execute if entity @s[tag=is_invisible_frame_1] run tag @s remove is_invisible_frame_1

execute if entity @s[tag=is_invisible_frame_0] run tag @s add is_invisible_frame_1
execute if entity @s[tag=is_invisible_frame_0] run tag @s remove is_invisible_frame_0
