scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.projectile_star.animation.spin.local_anim_time 0
scoreboard players set @s aj.projectile_star.animation.spin.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:projectile_star/zzzzzzzz/animations/spin/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.projectile_star.animation.spin