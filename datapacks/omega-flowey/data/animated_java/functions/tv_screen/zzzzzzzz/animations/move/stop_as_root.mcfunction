scoreboard players set @s aj.tv_screen.animation.move.local_anim_time 0
tag @s remove aj.tv_screen.animation.move
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tv_screen.disable_command_keyframes
function animated_java:tv_screen/zzzzzzzz/animations/move/tree/leaf_0
tag @s remove aj.tv_screen.disable_command_keyframes