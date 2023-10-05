scoreboard players add @s aj.nose.animation.move.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.nose.animation.move.local_anim_time
function animated_java:nose/zzzzzzzz/animations/move/apply_frame_as_root
execute if score @s aj.nose.animation.move.local_anim_time matches 24.. run function animated_java:nose/zzzzzzzz/animations/move/end