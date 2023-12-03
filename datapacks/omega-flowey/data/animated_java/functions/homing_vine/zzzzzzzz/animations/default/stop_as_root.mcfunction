scoreboard players set @s aj.homing_vine.animation.default.local_anim_time 0
tag @s remove aj.homing_vine.animation.default
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.homing_vine.disable_command_keyframes
function animated_java:homing_vine/zzzzzzzz/animations/default/tree/leaf_0
tag @s remove aj.homing_vine.disable_command_keyframes