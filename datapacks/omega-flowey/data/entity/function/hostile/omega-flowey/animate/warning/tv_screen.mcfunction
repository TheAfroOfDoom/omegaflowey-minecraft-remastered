function animated_java:tv_screen/apply_variant/warning
execute on passengers if entity @s[tag=aj.tv_screen.bone.screen] run data merge entity @s { brightness: { block: 15, sky: 0 } }
