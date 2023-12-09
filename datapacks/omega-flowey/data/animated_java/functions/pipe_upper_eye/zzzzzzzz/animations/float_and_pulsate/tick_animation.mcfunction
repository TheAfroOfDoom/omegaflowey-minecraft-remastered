scoreboard players add @s aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time
function animated_java:pipe_upper_eye/zzzzzzzz/animations/float_and_pulsate/apply_frame_as_root
execute if score @s aj.pipe_upper_eye.animation.float_and_pulsate.local_anim_time matches 572.. run function animated_java:pipe_upper_eye/zzzzzzzz/animations/float_and_pulsate/end