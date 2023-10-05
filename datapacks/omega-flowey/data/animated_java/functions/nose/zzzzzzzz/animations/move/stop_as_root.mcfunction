scoreboard players set @s aj.nose.animation.move.local_anim_time 0
tag @s remove aj.nose.animation.move
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.nose.disable_command_keyframes
function animated_java:nose/zzzzzzzz/animations/move/tree/leaf_0
tag @s remove aj.nose.disable_command_keyframes