scoreboard players add @s aj.pipe_upper_eye.animation.pulsate2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.pipe_upper_eye.animation.pulsate2.local_anim_time
function animated_java:pipe_upper_eye/zzzzzzzz/animations/pulsate2/apply_frame_as_root
execute if score @s aj.pipe_upper_eye.animation.pulsate2.local_anim_time matches 44.. run function animated_java:pipe_upper_eye/zzzzzzzz/animations/pulsate2/end