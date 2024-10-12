function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models

## Large side vines
# Right large side vine
execute positioned -25 40 -9 rotated 135 -10 run function animated_java:large_side_vine/summon { args: {} }
tag @e[tag=aj.large_side_vine.root] add large_side_vine.right
# Left large side vine
execute positioned 27 40 -9 rotated 215 -10 run function animated_java:large_side_vine/summon { args: {} }
tag @e[tag=aj.large_side_vine.root,tag=!large_side_vine.right] add large_side_vine.left

## Lower eyes
# Right-eye
execute positioned -5 42 -7 rotated 170 -20 run function animated_java:omegaflowey_lower_eye/summon { args: {} }
# Left-eye
execute positioned 5 42 -7 rotated 10 20 run function animated_java:omegaflowey_lower_eye/summon { args: {} }

## Lower petal pipes
# Right-lower petal pipe
execute positioned -11 44 -12.5 rotated -10 20 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root] add petal_pipe.right
# Left-lower petal pipe
execute positioned 11 44 -12.5 rotated -170 -20 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_circle.root] add petal_pipe.lower

## Middle petal pipes
# Right-middle petal pipe
execute positioned -14 48 -6.5 rotated -20 40 run function animated_java:petal_pipe_middle/summon { args: {} }
tag @e[tag=aj.petal_pipe_middle.root] add petal_pipe.right
# Left-middle petal pipe
execute positioned 14 48 -6.5 rotated -160 -40 run function animated_java:petal_pipe_middle/summon { args: {} }
tag @e[tag=aj.petal_pipe_middle.root,tag=!petal_pipe.right] add petal_pipe.left

## Mouth
execute positioned 0 35.5 -3.15 rotated 0 9 run function animated_java:mouth/summon { args: {} }

## Nose
execute positioned 0 37 -13 rotated 0 10 run function animated_java:nose/summon { args: {} }

## TV-screen
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned 0 49 -6 rotated 0 45 run function animated_java:tv_screen/summon { args: {} }

## Upper eyes
# Right-eye
execute positioned -15.5 48 -4 rotated 160 -40 run function animated_java:omegaflowey_upper_eye/summon { args: {} }
# Left-eye
execute positioned 16.5 48 -4 rotated 20 40 run function animated_java:omegaflowey_upper_eye/summon { args: {} }

## Upper petal pipes
# Right-upper petal pipe
execute positioned -11 63 4 rotated -10 45 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe.lower] add petal_pipe.right
# Left-upper petal pipe
execute positioned 11 63 4 rotated -170 -45 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe.lower,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe.lower] add petal_pipe.upper
