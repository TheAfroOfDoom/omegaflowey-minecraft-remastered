execute if entity @s[tag=aj.mouth.root] run function animated_java:mouth/animations/move/play
execute if entity @s[tag=aj.nose.root] run function animated_java:nose/animations/move/play
execute if entity @s[tag=aj.large_side_vine.root] run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine
execute if entity @s[tag=aj.omegaflowey_lower_eye.root] run function animated_java:omegaflowey_lower_eye/animations/look_around/play
execute if entity @s[tag=aj.petal_pipe_circle.root] run function omegaflowey.entity:hostile/omega-flowey/animate/petal_pipe_circle
execute if entity @s[tag=aj.petal_pipe_middle.root] run function omegaflowey.entity:hostile/omega-flowey/animate/petal_pipe_middle
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen omegaflowey.global.flag matches 1 \
  if entity @s[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run function omegaflowey.entity:hostile/omega-flowey/animate/tv-screen/default
execute if entity @s[tag=aj.omegaflowey_upper_eye.root] run function animated_java:omegaflowey_upper_eye/animations/look_around/play
