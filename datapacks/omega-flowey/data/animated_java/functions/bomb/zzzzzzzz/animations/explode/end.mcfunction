execute if score @s aj.bomb.animation.explode.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:bomb/zzzzzzzz/animations/explode/end_loop
execute if score @s aj.bomb.animation.explode.loop_mode = $aj.loop_mode.once aj.i run function animated_java:bomb/animations/explode/stop
execute if score @s aj.bomb.animation.explode.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:bomb/animations/explode/pause