scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.friendliness_pellet.animation.spin.local_anim_time 0
scoreboard players set @s aj.friendliness_pellet.animation.spin.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:friendliness_pellet/zzzzzzzz/animations/spin/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.friendliness_pellet.animation.spin