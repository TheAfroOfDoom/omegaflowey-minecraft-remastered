scoreboard players add @s aj.finger_gun.animation.shoot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.finger_gun.animation.shoot.local_anim_time
function animated_java:finger_gun/zzzzzzzz/animations/shoot/apply_frame_as_root
execute if score @s aj.finger_gun.animation.shoot.local_anim_time matches 23.. run function animated_java:finger_gun/zzzzzzzz/animations/shoot/end