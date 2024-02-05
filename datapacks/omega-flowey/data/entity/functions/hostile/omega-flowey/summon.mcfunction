function entity:hostile/omega-flowey/summon/remove_preexisting_models

## Nose
execute positioned 0 37 -13 rotated 0 10 run function animated_java:nose/summon

## Lower eyes
# Right-eye
execute positioned -5 42 -7 rotated 170 -20 run function animated_java:lower_eye/summon
# Left-eye
execute positioned 5 42 -7 rotated 10 20 run function animated_java:lower_eye/summon

## Lower petal pipes
# Right-lower petal pipe
execute positioned -11 43 -11 rotated -10 20 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root] add petal_pipe.right
tag @e[tag=aj.petal_pipe_lower.root] add petal_pipe_lower
# Left-lower petal pipe
execute positioned 11 43 -11 rotated -170 -20 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_lower.root] add petal_pipe_lower

## Middle petal pipes
# Right-middle petal pipe
execute positioned -14 48 -6.5 rotated -20 40 run function animated_java:petal_pipe_middle/summon
tag @e[tag=aj.petal_pipe_middle.root] add petal_pipe_middle.right
# Left-middle petal pipe
execute positioned 14 48 -6.5 rotated -160 -40 run function animated_java:petal_pipe_middle/summon
tag @e[tag=aj.petal_pipe_middle.root,tag=!petal_pipe_middle.right] add petal_pipe_middle.left

## TV-screen
execute positioned 0 49 -6 rotated 0 45 run function animated_java:tv_screen/summon

## Upper eyes
# Right-eye
execute positioned -15.5 48 -4 rotated 160 -40 run function animated_java:upper_eye/summon
# Left-eye
execute positioned 16.5 48 -4 rotated 20 40 run function animated_java:upper_eye/summon

## Upper petal pipes
# Right-upper petal pipe
execute positioned -11 63 4 rotated -10 45 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root,tag=!petal_pipe_lower] add petal_pipe.right
# Left-upper petal pipe
execute positioned 11 63 4 rotated -170 -45 run function animated_java:petal_pipe_lower/summon
tag @e[tag=aj.petal_pipe_lower.root,tag=!petal_pipe_lower,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_lower.root,tag=!petal_pipe_lower] add petal_pipe_upper


execute as @e[type=minecraft:item_display] run data modify entity @s teleport_duration set value 1
