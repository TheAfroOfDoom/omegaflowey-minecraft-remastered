scoreboard players add @s aj.bomb.animation.explode.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bomb.animation.explode.local_anim_time
function animated_java:bomb/zzzzzzzz/animations/explode/apply_frame_as_root
execute if score @s aj.bomb.animation.explode.local_anim_time matches 12.. run function animated_java:bomb/zzzzzzzz/animations/explode/end