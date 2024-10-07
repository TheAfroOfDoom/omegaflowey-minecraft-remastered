data modify entity @s view_range set value 2.5f

execute if entity @s[tag=aj.tv_screen.bone.box] run data merge entity @s { brightness: { block: 10, sky: 15 } }
