execute if entity @s[tag=aj.omegaflowey_mouth.root] run function animated_java:omegaflowey_mouth/animations/omegaflowey_move/pause
execute if entity @s[tag=aj.omegaflowey_mouth.root] run function animated_java:omegaflowey_mouth/variants/default/apply

execute if entity @s[tag=aj.omegaflowey_nose.root] run function omegaflowey.entity:hostile/omega-flowey/animate/intro/brighten/nose

execute if entity @s[tag=aj.omegaflowey_arm_vine.root] run function animated_java:omegaflowey_arm_vine/animations/omegaflowey_move_slow/pause
execute if entity @s[tag=aj.omegaflowey_arm_vine.root] run function animated_java:omegaflowey_arm_vine/variants/default/apply
execute if entity @s[tag=aj.omegaflowey_arm_vine_right.root] run function animated_java:omegaflowey_arm_vine_right/animations/omegaflowey_move_slow/pause
execute if entity @s[tag=aj.omegaflowey_arm_vine_right.root] run function animated_java:omegaflowey_arm_vine_right/variants/default/apply

execute if entity @s[tag=aj.omegaflowey_large_side_vine.root] run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine/slow

execute if entity @s[tag=aj.omegaflowey_lower_eye.root] run function animated_java:omegaflowey_lower_eye/animations/omegaflowey_look_around/pause
execute if entity @s[tag=aj.omegaflowey_lower_eye.root] run function animated_java:omegaflowey_lower_eye/variants/default/apply

execute if entity @s[tag=aj.omegaflowey_petal_pipe_circle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/animations/omegaflowey_float_and_pulsate/pause
execute if entity @s[tag=aj.omegaflowey_petal_pipe_circle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/variants/default/apply

execute if entity @s[tag=aj.omegaflowey_petal_pipe_middle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_middle_simplified/animations/omegaflowey_float_and_pulsate/pause
execute if entity @s[tag=aj.omegaflowey_petal_pipe_middle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_middle_simplified/variants/default/apply

execute if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:omegaflowey_tv_screen/animations/omegaflowey_move/pause
execute if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:omegaflowey_tv_screen/variants/smiling_noglow/apply
execute \
  if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] \
  on passengers \
  if entity @s[tag=aj.omegaflowey_tv_screen.bone] \
  run data merge entity @s { brightness: { block: 11, sky: 0 }}

execute if entity @s[tag=aj.omegaflowey_upper_eye.root] run function animated_java:omegaflowey_upper_eye/animations/omegaflowey_look_around/pause
execute if entity @s[tag=aj.omegaflowey_upper_eye.root] run function animated_java:omegaflowey_upper_eye/variants/default/apply
