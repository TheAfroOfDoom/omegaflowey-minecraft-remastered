execute as @e[tag=aj.mouth.root] run function animated_java:mouth/animations/move/play
execute as @e[tag=aj.nose.root] run function animated_java:nose/animations/move/play
execute as @e[tag=aj.large_side_vine.root] run function entity:hostile/omega-flowey/animate/large_side_vine
execute as @e[tag=aj.lower_eye.root] run function animated_java:lower_eye/animations/look_around/play
execute as @e[tag=aj.petal_pipe_circle.root] run function entity:hostile/omega-flowey/animate/petal_pipe_circle
execute as @e[tag=aj.petal_pipe_middle.root] run function entity:hostile/omega-flowey/animate/petal_pipe_middle
execute unless score #omegaflowey.bossfight.skip_resummon_tvscreen global.flag matches 1 \
  as @e[tag=aj.tv_screen.root,tag=tv_screen.boss_fight] run function entity:hostile/omega-flowey/animate/tv-screen/default
execute as @e[tag=aj.upper_eye.root] run function animated_java:upper_eye/animations/look_around/play
