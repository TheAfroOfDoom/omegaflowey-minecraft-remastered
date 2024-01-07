scoreboard players add @s aj.finger_gun.animation.grow.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.finger_gun.animation.grow.local_anim_time
function animated_java:finger_gun/zzzzzzzz/animations/grow/apply_frame_as_root
execute if score @s aj.finger_gun.animation.grow.local_anim_time matches 14.. run function animated_java:finger_gun/zzzzzzzz/animations/grow/end