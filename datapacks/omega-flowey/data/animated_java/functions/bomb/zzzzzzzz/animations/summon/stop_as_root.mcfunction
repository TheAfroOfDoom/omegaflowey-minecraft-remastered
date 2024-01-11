scoreboard players set @s aj.bomb.animation.summon.local_anim_time 0
tag @s remove aj.bomb.animation.summon
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.bomb.disable_command_keyframes
function animated_java:bomb/zzzzzzzz/animations/summon/tree/leaf_0
tag @s remove aj.bomb.disable_command_keyframes