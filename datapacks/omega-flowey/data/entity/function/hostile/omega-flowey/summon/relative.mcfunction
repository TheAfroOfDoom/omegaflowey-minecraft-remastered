function entity:hostile/omega-flowey/summon/remove_preexisting_models

## Large side vines
# Right large side vine
execute positioned ^-27.0 ^3.5 ^4.5 rotated ~135 ~-10 run function animated_java:large_side_vine/summon { args: {} }
tag @e[tag=aj.large_side_vine.root] add large_side_vine.right
# Left large side vine
execute positioned ^27.0 ^3.5 ^4.5 rotated ~215 ~-10 run function animated_java:large_side_vine/summon { args: {} }
tag @e[tag=aj.large_side_vine.root,tag=!large_side_vine.right] add large_side_vine.left

## Lower eyes
# Right-eye
execute positioned ^-5.5 ^5.5 ^6.5 rotated ~170 ~-20 run function animated_java:lower_eye/summon { args: {} }
tag @e[type=minecraft:item_display, tag=aj.lower_eye.root] add lower_eye.right
# Left-eye
execute positioned ^5.5 ^5.5 ^6.5 rotated ~10 ~20 run function animated_java:lower_eye/summon { args: {} }
tag @e[type=minecraft:item_display, tag=aj.lower_eye.root, tag=!lower_eye.right] add lower_eye.left

## Lower petal pipes
# Right-lower petal pipe
execute positioned ^-11.5 ^7.5 ^ rotated ~-10 ~20 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root] add petal_pipe.right
# Left-lower petal pipe
execute positioned ^11.5 ^7.5 ^ rotated ~-170 ~-20 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_circle.root] add petal_pipe_lower

## Middle petal pipes
# Right-middle petal pipe
execute positioned ^-15.0 ^11.5 ^6.5 rotated ~-20 ~40 run function animated_java:petal_pipe_middle/summon { args: {} }
tag @e[tag=aj.petal_pipe_middle.root] add petal_pipe.right
# Left-middle petal pipe
execute positioned ^15.0 ^11.5 ^6.5 rotated ~-160 ~-40 run function animated_java:petal_pipe_middle/summon { args: {} }
tag @e[tag=aj.petal_pipe_middle.root,tag=!petal_pipe.right] add petal_pipe.left

## Mouth
execute positioned ^ ^-1.5 ^9.35 rotated ~ ~9 run function animated_java:mouth/summon { args: {} }

## Nose
execute positioned ^ ^ ^ rotated ~ ~10 run function animated_java:nose/summon { args: {} }

## TV-screen
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  positioned ^ ^12.5 ^7.5 rotated ~ ~45 run function animated_java:tv_screen/summon { args: {} }
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  as @e[tag=aj.tv_screen.root, tag=tv-screen-new] run function entity:hostile/omega-flowey/summon/tv_screen/initialize

## Upper eyes
# Right-eye
execute positioned ^-16.0 ^11.5 ^9.5 rotated ~160 ~-40 run function animated_java:upper_eye/summon { args: {} }
# Left-eye
execute positioned ^16.0 ^11.5 ^9.5 rotated ~20 ~40 run function animated_java:upper_eye/summon { args: {} }

## Upper petal pipes
# Right-upper petal pipe
execute positioned ^-11.5 ^26.5 ^17.5 rotated ~-10 ~45 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe_lower] add petal_pipe.right
# Left-upper petal pipe
execute positioned ^11.5 ^26.5 ^17.5 rotated ~-170 ~-45 run function animated_java:petal_pipe_circle/summon { args: {} }
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe_lower,tag=!petal_pipe.right] add petal_pipe.left
tag @e[tag=aj.petal_pipe_circle.root,tag=!petal_pipe_lower] add petal_pipe_upper
