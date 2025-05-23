function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models with storage omegaflowey:bossfight

## Arm vines
# Right arm vine
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-22.25 ^ ^13.0 rotated ~-185.0 ~-0.5 run function animated_java:omegaflowey_arm_vine_right/summon { args: {} }
# Left arm vine
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^22.25 ^ ^13.0 rotated ~185.0 ~-0.5 run function animated_java:omegaflowey_arm_vine/summon { args: {} }

## Large side vines
# Right large side vine
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-27.0 ^3.5 ^4.5 rotated ~135 ~-10 run function animated_java:omegaflowey_large_side_vine/summon { args: {} }
# Left large side vine
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^27.0 ^3.5 ^4.5 rotated ~215 ~-10 run function animated_java:omegaflowey_large_side_vine/summon { args: {} }

## Lower eyes
# Right-eye
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-5.5 ^5.5 ^6.5 rotated ~170 ~-20 run function animated_java:omegaflowey_lower_eye/summon { args: {} }
# Left-eye
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^5.5 ^5.5 ^6.5 rotated ~10 ~20 run function animated_java:omegaflowey_lower_eye/summon { args: {} }

## Lower petal pipes
# Right-lower petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-11.5 ^7.5 ^ rotated ~-10 ~20 run function animated_java:omegaflowey_petal_pipe_circle_simplified/summon { args: {} }
# Left-lower petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^11.5 ^7.5 ^ rotated ~-170 ~-20 run function animated_java:omegaflowey_petal_pipe_circle_simplified/summon { args: {} }

## Middle petal pipes
# Right-middle petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-15.0 ^11.5 ^6.5 rotated ~-20 ~40 run function animated_java:omegaflowey_petal_pipe_middle_simplified/summon { args: {} }
# Left-middle petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^15.0 ^11.5 ^6.5 rotated ~-160 ~-40 run function animated_java:omegaflowey_petal_pipe_middle_simplified/summon { args: {} }

## Mouth
execute positioned ^ ^-1.5 ^9.35 rotated ~ ~9 run function animated_java:omegaflowey_mouth/summon { args: {} }

## Nose
execute positioned ^ ^ ^ rotated ~ ~10 run function animated_java:omegaflowey_nose/summon { args: {} }

## TV-screen
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
# LINK: /omegaflowey.entity:hostile/omega-flowey/summon/initialize/tv_screen.mcfunction
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen omegaflowey.global.flag matches 1 \
  positioned ^ ^12.5 ^7.5 rotated ~ ~45 run function animated_java:omegaflowey_tv_screen/summon { args: {} }

## Upper eyes
# Right-eye
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
execute positioned ^-16.0 ^11.5 ^9.5 rotated ~160 ~-40 run function animated_java:omegaflowey_upper_eye/summon { args: {} }
# Left-eye
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
execute positioned ^16.0 ^11.5 ^9.5 rotated ~20 ~40 run function animated_java:omegaflowey_upper_eye/summon { args: {} }

## Upper petal pipes
# Right-upper petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 3
execute positioned ^-11.5 ^26.5 ^17.5 rotated ~-10 ~45 run function animated_java:omegaflowey_petal_pipe_circle_simplified/summon { args: {} }
# Left-upper petal pipe
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 4
execute positioned ^11.5 ^26.5 ^17.5 rotated ~-170 ~-45 run function animated_java:omegaflowey_petal_pipe_circle_simplified/summon { args: {} }

# reset tag-variant flag
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
