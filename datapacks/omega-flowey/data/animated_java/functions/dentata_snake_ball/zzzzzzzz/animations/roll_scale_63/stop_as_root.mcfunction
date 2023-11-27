scoreboard players set @s aj.dentata_snake_ball.animation.roll_scale_63.local_anim_time 0
tag @s remove aj.dentata_snake_ball.animation.roll_scale_63
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.dentata_snake_ball.disable_command_keyframes
function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_63/tree/leaf_0
tag @s remove aj.dentata_snake_ball.disable_command_keyframes