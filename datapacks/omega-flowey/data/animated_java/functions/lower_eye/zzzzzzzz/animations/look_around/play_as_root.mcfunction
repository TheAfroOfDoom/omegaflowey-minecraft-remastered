scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.lower_eye.animation.look_around.local_anim_time 0
scoreboard players set @s aj.lower_eye.animation.look_around.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:lower_eye/zzzzzzzz/animations/look_around/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.lower_eye.animation.look_around