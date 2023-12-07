scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time 0
scoreboard players set @s aj.pipe_upper_eye.animation.float_and_pulsate.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:pipe_upper_eye/zzzzzzzz/animations/float_and_pulsate/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.pipe_upper_eye.animation.float_and_pulsate