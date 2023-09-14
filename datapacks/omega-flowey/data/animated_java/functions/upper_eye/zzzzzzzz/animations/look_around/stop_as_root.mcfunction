scoreboard players set @s aj.upper_eye.animation.look_around.local_anim_time 0
tag @s remove aj.upper_eye.animation.look_around
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.upper_eye.disable_command_keyframes
function animated_java:upper_eye/zzzzzzzz/animations/look_around/tree/leaf_0
tag @s remove aj.upper_eye.disable_command_keyframes