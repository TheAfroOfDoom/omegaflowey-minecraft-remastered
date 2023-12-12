scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.homing_vine.animation.default.local_anim_time 0
scoreboard players set @s aj.homing_vine.animation.default.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:homing_vine/zzzzzzzz/animations/default/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.homing_vine.animation.default