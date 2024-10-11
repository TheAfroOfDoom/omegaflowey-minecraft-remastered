function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models

## Large side vines
# Right large side vine
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute positioned ^-27.0 ^3.5 ^4.5 rotated ~135 ~-10 run function animated_java:large_side_vine/summon { args: {} }
# Left large side vine
scoreboard players set #omegaflowey.summon.tag_variant global.flag 2
execute positioned ^27.0 ^3.5 ^4.5 rotated ~215 ~-10 run function animated_java:large_side_vine/summon { args: {} }

## Lower eyes
# Right-eye
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute positioned ^-5.5 ^5.5 ^6.5 rotated ~170 ~-20 run function animated_java:lower_eye/summon { args: {} }
# Left-eye
scoreboard players set #omegaflowey.summon.tag_variant global.flag 2
execute positioned ^5.5 ^5.5 ^6.5 rotated ~10 ~20 run function animated_java:lower_eye/summon { args: {} }

## Lower petal pipes
# Right-lower petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute positioned ^-11.5 ^7.5 ^ rotated ~-10 ~20 run function animated_java:petal_pipe_circle/summon { args: {} }
# Left-lower petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 2
execute positioned ^11.5 ^7.5 ^ rotated ~-170 ~-20 run function animated_java:petal_pipe_circle/summon { args: {} }

## Middle petal pipes
# Right-middle petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute positioned ^-15.0 ^11.5 ^6.5 rotated ~-20 ~40 run function animated_java:petal_pipe_middle/summon { args: {} }
# Left-middle petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 2
execute positioned ^15.0 ^11.5 ^6.5 rotated ~-160 ~-40 run function animated_java:petal_pipe_middle/summon { args: {} }

## Mouth
execute positioned ^ ^-1.5 ^9.35 rotated ~ ~9 run function animated_java:mouth/summon { args: {} }

## Nose
execute positioned ^ ^ ^ rotated ~ ~10 run function animated_java:nose/summon { args: {} }

## TV-screen
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  positioned ^ ^12.5 ^7.5 rotated ~ ~45 run function animated_java:tv_screen/summon { args: {} }

## Upper eyes
# Right-eye
scoreboard players set #omegaflowey.summon.tag_variant global.flag 1
execute positioned ^-16.0 ^11.5 ^9.5 rotated ~160 ~-40 run function animated_java:upper_eye/summon { args: {} }
# Left-eye
scoreboard players set #omegaflowey.summon.tag_variant global.flag 2
execute positioned ^16.0 ^11.5 ^9.5 rotated ~20 ~40 run function animated_java:upper_eye/summon { args: {} }

## Upper petal pipes
# Right-upper petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 3
execute positioned ^-11.5 ^26.5 ^17.5 rotated ~-10 ~45 run function animated_java:petal_pipe_circle/summon { args: {} }
# Left-upper petal pipe
scoreboard players set #omegaflowey.summon.tag_variant global.flag 4
execute positioned ^11.5 ^26.5 ^17.5 rotated ~-170 ~-45 run function animated_java:petal_pipe_circle/summon { args: {} }

# reset tag-variant flag
scoreboard players set #omegaflowey.summon.tag_variant global.flag 0
