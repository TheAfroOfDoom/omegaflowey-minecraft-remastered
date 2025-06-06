execute if entity @s[tag=aj.omegaflowey_mouth.root] run function animated_java:omegaflowey_mouth/animations/omegaflowey_move/play
execute if entity @s[tag=aj.omegaflowey_mouth.root] run function animated_java:omegaflowey_mouth/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_nose.root] run function animated_java:omegaflowey_nose/animations/omegaflowey_move/play
execute if entity @s[tag=aj.omegaflowey_nose.root] run function animated_java:omegaflowey_nose/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_arm_vine.root] run function animated_java:omegaflowey_arm_vine/animations/omegaflowey_move_slow/play
execute if entity @s[tag=aj.omegaflowey_arm_vine.root] run function animated_java:omegaflowey_arm_vine/variants/black/apply
execute if entity @s[tag=aj.omegaflowey_arm_vine_right.root] run function animated_java:omegaflowey_arm_vine_right/animations/omegaflowey_move_slow/play
execute if entity @s[tag=aj.omegaflowey_arm_vine_right.root] run function animated_java:omegaflowey_arm_vine_right/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_large_side_vine.root] run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine
execute if entity @s[tag=aj.omegaflowey_large_side_vine.root] run function animated_java:omegaflowey_large_side_vine/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_lower_eye.root] run function animated_java:omegaflowey_lower_eye/animations/omegaflowey_look_around/play
execute if entity @s[tag=aj.omegaflowey_lower_eye.root] run function animated_java:omegaflowey_lower_eye/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_petal_pipe_circle_simplified.root] run \
  function omegaflowey.entity:hostile/omega-flowey/animate/petal_pipe_circle
execute if entity @s[tag=aj.omegaflowey_petal_pipe_circle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_petal_pipe_middle_simplified.root] run \
  function omegaflowey.entity:hostile/omega-flowey/animate/petal_pipe_middle
execute if entity @s[tag=aj.omegaflowey_petal_pipe_middle_simplified.root] run \
  function animated_java:omegaflowey_petal_pipe_middle_simplified/variants/black/apply

execute if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:omegaflowey_tv_screen/animations/omegaflowey_move/play
execute if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:omegaflowey_tv_screen/variants/black/apply
execute \
  if entity @s[tag=aj.omegaflowey_tv_screen.root, tag=tv_screen.boss_fight] \
  on passengers \
  if entity @s[tag=aj.omegaflowey_tv_screen.bone] \
  run function omegaflowey.entity:hostile/omega-flowey/animate/tv-screen/default/bone

execute if entity @s[tag=aj.omegaflowey_upper_eye.root] run function animated_java:omegaflowey_upper_eye/animations/omegaflowey_look_around/play
execute if entity @s[tag=aj.omegaflowey_upper_eye.root] run function animated_java:omegaflowey_upper_eye/variants/black/apply
