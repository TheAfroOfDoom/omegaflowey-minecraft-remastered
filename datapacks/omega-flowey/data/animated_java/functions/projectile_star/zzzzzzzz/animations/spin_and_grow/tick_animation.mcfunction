scoreboard players add @s aj.projectile_star.animation.spin_and_grow.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.projectile_star.animation.spin_and_grow.local_anim_time
function animated_java:projectile_star/zzzzzzzz/animations/spin_and_grow/apply_frame_as_root
execute if score @s aj.projectile_star.animation.spin_and_grow.local_anim_time matches 12.. run function animated_java:projectile_star/zzzzzzzz/animations/spin_and_grow/end