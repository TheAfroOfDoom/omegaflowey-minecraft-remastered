scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.pipe_upper_eye.animation.pulsate2.local_anim_time 0
scoreboard players set @s aj.pipe_upper_eye.animation.pulsate2.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:pipe_upper_eye/zzzzzzzz/animations/pulsate2/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.pipe_upper_eye.animation.pulsate2