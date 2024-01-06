scoreboard players set @s aj.finger_gun_bullet.animation.shoot.local_anim_time 0
tag @s remove aj.finger_gun_bullet.animation.shoot
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.finger_gun_bullet.disable_command_keyframes
function animated_java:finger_gun_bullet/zzzzzzzz/animations/shoot/tree/leaf_0
tag @s remove aj.finger_gun_bullet.disable_command_keyframes