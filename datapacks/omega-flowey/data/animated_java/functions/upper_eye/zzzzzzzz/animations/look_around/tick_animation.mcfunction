scoreboard players add @s aj.upper_eye.animation.look_around.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.upper_eye.animation.look_around.local_anim_time
function animated_java:upper_eye/zzzzzzzz/animations/look_around/apply_frame_as_root
execute if score @s aj.upper_eye.animation.look_around.local_anim_time matches 336.. run function animated_java:upper_eye/zzzzzzzz/animations/look_around/end