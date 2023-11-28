scoreboard players add @s aj.dentata_snake_ball.animation.roll_scale_56.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.dentata_snake_ball.animation.roll_scale_56.local_anim_time
function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_56/apply_frame_as_root
execute if score @s aj.dentata_snake_ball.animation.roll_scale_56.local_anim_time matches 24.. run function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_56/end