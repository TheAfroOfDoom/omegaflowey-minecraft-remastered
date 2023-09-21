scoreboard players add @s aj.lower_eye.animation.look_around.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.lower_eye.animation.look_around.local_anim_time
function animated_java:lower_eye/zzzzzzzz/animations/look_around/apply_frame_as_root
execute if score @s aj.lower_eye.animation.look_around.local_anim_time matches 120.. run function animated_java:lower_eye/zzzzzzzz/animations/look_around/end