scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.finger_gun.animation.grow.local_anim_time 0
scoreboard players set @s aj.finger_gun.animation.grow.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:finger_gun/zzzzzzzz/animations/grow/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.finger_gun.animation.grow