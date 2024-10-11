execute if entity @s[tag=aj.mouth.root] run function animated_java:mouth/animations/move/pause
execute if entity @s[tag=aj.mouth.root] run function animated_java:mouth/variants/default/apply

execute if entity @s[tag=aj.nose.root] run function animated_java:nose/animations/move/pause
execute if entity @s[tag=aj.nose.root] run function animated_java:nose/variants/default/apply

execute if entity @s[tag=aj.large_side_vine.root] run function entity:hostile/omega-flowey/animate/large_side_vine/slow
execute if entity @s[tag=aj.large_side_vine.root] run function animated_java:large_side_vine/variants/default/apply

execute if entity @s[tag=aj.lower_eye.root] run function animated_java:lower_eye/animations/look_around/pause
execute if entity @s[tag=aj.lower_eye.root] run function animated_java:lower_eye/variants/default/apply

execute if entity @s[tag=aj.petal_pipe_circle.root] run function animated_java:petal_pipe_circle/animations/float_and_pulsate/pause
execute if entity @s[tag=aj.petal_pipe_circle.root] run function animated_java:petal_pipe_circle/variants/default/apply

execute if entity @s[tag=aj.petal_pipe_middle.root] run function animated_java:petal_pipe_middle/animations/float_and_pulsate/pause
execute if entity @s[tag=aj.petal_pipe_middle.root] run function animated_java:petal_pipe_middle/variants/default/apply

execute if entity @s[tag=aj.tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:tv_screen/animations/move/pause
execute if entity @s[tag=aj.tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:tv_screen/variants/default/apply
execute \
  if entity @s[tag=aj.tv_screen.root, tag=tv_screen.boss_fight] \
  on passengers if entity @s[tag=aj.tv_screen.bone] \
  run function entity:hostile/omega-flowey/animate/tv-screen/default/bone

execute if entity @s[tag=aj.upper_eye.root] run function animated_java:upper_eye/animations/look_around/pause
execute if entity @s[tag=aj.upper_eye.root] run function animated_java:upper_eye/variants/default/apply
