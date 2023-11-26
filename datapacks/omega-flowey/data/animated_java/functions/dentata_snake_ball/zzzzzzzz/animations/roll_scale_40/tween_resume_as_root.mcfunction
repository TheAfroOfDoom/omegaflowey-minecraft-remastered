function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_40/resume_as_root
function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_40/tween_as_root
function animated_java:dentata_snake_ball/zzzzzzzz/animations/roll_scale_40/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i