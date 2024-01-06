scoreboard players add @s aj.finger_gun_bullet.animation.shoot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.finger_gun_bullet.animation.shoot.local_anim_time
function animated_java:finger_gun_bullet/zzzzzzzz/animations/shoot/apply_frame_as_root
execute if score @s aj.finger_gun_bullet.animation.shoot.local_anim_time matches 15.. run function animated_java:finger_gun_bullet/zzzzzzzz/animations/shoot/end