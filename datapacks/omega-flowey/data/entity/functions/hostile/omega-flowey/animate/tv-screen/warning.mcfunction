execute as @e[tag=aj.tv_screen.root] run function animated_java:tv_screen/apply_variant/warning
execute as @e[tag=aj.tv_screen.bone.screen] run data merge entity @s { brightness: { block: 15, sky: 0 } }
