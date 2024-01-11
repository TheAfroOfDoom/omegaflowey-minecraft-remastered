scoreboard players set @s aj.bomb.animation.explode.local_anim_time 0
tag @s remove aj.bomb.animation.explode
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bomb.disable_command_keyframes
function animated_java:bomb/zzzzzzzz/animations/explode/tree/leaf_0
tag @s remove aj.bomb.disable_command_keyframes