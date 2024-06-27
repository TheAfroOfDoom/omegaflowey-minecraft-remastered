function animated_java:tv_screen/variants/warning/apply
execute on passengers if entity @s[tag=aj.tv_screen.bone.screen] run data merge entity @s { brightness: { block: 15, sky: 0 } }
