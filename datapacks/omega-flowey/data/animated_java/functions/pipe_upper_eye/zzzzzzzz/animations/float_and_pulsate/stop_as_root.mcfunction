scoreboard players set @s aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time 0
tag @s remove aj.pipe_upper_eye.animation.float_and_pulsate
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.pipe_upper_eye.disable_command_keyframes
function animated_java:pipe_upper_eye/zzzzzzzz/animations/float_and_pulsate/tree/leaf_0
tag @s remove aj.pipe_upper_eye.disable_command_keyframes