scoreboard players set @s aj.pipe_upper_eye.animation.pulsate2.local_anim_time 0
tag @s remove aj.pipe_upper_eye.animation.pulsate2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.pipe_upper_eye.disable_command_keyframes
function animated_java:pipe_upper_eye/zzzzzzzz/animations/pulsate2/tree/leaf_0
tag @s remove aj.pipe_upper_eye.disable_command_keyframes