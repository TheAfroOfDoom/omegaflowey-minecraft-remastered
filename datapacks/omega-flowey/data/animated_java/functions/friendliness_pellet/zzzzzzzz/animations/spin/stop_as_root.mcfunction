scoreboard players set @s aj.friendliness_pellet.animation.spin.local_anim_time 0
tag @s remove aj.friendliness_pellet.animation.spin
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.friendliness_pellet.disable_command_keyframes
function animated_java:friendliness_pellet/zzzzzzzz/animations/spin/tree/leaf_0
tag @s remove aj.friendliness_pellet.disable_command_keyframes