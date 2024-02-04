function entity:hostile/omega-flowey/summon/remove_preexisting_models

## Nose
execute positioned 0 39 -13 rotated 0 10 run function animated_java:nose/summon

## Lower eyes
# Right-eye
execute positioned -5 44 -7 rotated 170 -20 run function animated_java:lower_eye/summon
# Left-eye
execute positioned 5 44 -7 rotated 10 20 run function animated_java:lower_eye/summon

## Lower petal pipes
# Right-lower petal pipe
execute positioned -9 45 -11 rotated -10 20 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root] add petal_pipe_lower.right
# Left-lower petal pipe
execute positioned 9 45 -11 rotated -170 -20 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root,tag=!petal_pipe_lower.right] add petal_pipe_lower.left

## TV-screen
execute positioned 0 51 -6 rotated 0 45 run function animated_java:tv_screen/summon

## Upper eyes
# Right-eye
execute positioned -15.5 50 -4 rotated 160 -40 run function animated_java:upper_eye/summon
# Left-eye
execute positioned 16.5 50 -4 rotated 20 40 run function animated_java:upper_eye/summon

## Middle petal pipes
# Right-middle petal pipe
execute positioned -14 50 -6.5 rotated -20 40 run function animated_java:petal_pipe_middle/summon
tag @e[tag=aj.petal_pipe_middle.root] add petal_pipe_middle.right
# Left-middle petal pipe
execute positioned 14 50 -6.5 rotated -160 -40 run function animated_java:petal_pipe_middle/summon
tag @e[tag=aj.petal_pipe_middle.root,tag=!petal_pipe_middle.right] add petal_pipe_middle.left

execute as @e[type=minecraft:item_display] run data modify entity @s teleport_duration set value 1
