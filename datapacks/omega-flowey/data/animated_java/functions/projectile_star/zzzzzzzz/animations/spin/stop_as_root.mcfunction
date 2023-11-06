scoreboard players set @s aj.projectile_star.animation.spin.local_anim_time 0
tag @s remove aj.projectile_star.animation.spin
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.projectile_star.disable_command_keyframes
function animated_java:projectile_star/zzzzzzzz/animations/spin/tree/leaf_0
tag @s remove aj.projectile_star.disable_command_keyframes