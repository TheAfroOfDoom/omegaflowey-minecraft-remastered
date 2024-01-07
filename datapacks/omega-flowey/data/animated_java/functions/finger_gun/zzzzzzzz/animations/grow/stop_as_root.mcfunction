scoreboard players set @s aj.finger_gun.animation.grow.local_anim_time 0
tag @s remove aj.finger_gun.animation.grow
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.finger_gun.disable_command_keyframes
function animated_java:finger_gun/zzzzzzzz/animations/grow/tree/leaf_0
tag @s remove aj.finger_gun.disable_command_keyframes