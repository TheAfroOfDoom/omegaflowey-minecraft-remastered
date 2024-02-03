function entity:hostile/omega-flowey/summon/remove_preexisting_models

## Nose
execute positioned 0 39 -13 rotated 0 10 run function animated_java:nose/summon

## Lower eyes
# Right-eye
execute positioned -5 44 -7 rotated 170 -20 run function animated_java:lower_eye/summon
# Left-eye
execute positioned 5 44 -7 rotated 10 20 run function animated_java:lower_eye/summon

## Lower-eye pipes
# Right-lower-eye pipe
execute positioned -9 45 -11 rotated -10 20 run function animated_java:pipe_lower_eye/summon
# Left-lower-eye pipe
execute positioned 9 45 -11 rotated -170 -20 run function animated_java:pipe_lower_eye/summon

## TV-screen
execute positioned 0 51 -6 rotated 0 45 run function animated_java:tv_screen/summon

## Upper eyes
# Right-eye
execute positioned -15.5 50 -4 rotated 160 -40 run function animated_java:upper_eye/summon
# Left-eye
execute positioned 16.5 50 -4 rotated 20 40 run function animated_java:upper_eye/summon

## Upper-eye pipes
# Right-upper-eye pipe
execute positioned -14 50 -6.5 rotated -20 40 run function animated_java:pipe_upper_eye/summon
# Left-upper-eye pipe
execute positioned 14 50 -6.5 rotated -160 -40 run function animated_java:pipe_upper_eye/summon

execute as @e[type=minecraft:item_display] run data modify entity @s teleport_duration set value 1
