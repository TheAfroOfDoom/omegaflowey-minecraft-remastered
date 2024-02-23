execute as @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run function animated_java:tv_screen/apply_variant/warning
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] on passengers if entity @s[tag=aj.tv_screen.bone.screen] run data merge entity @s { brightness: { block: 15, sky: 0 } }
