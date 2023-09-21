scoreboard players add @s aj.tv_screen.animation.move.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tv_screen.animation.move.local_anim_time
function animated_java:tv_screen/zzzzzzzz/animations/move/apply_frame_as_root
execute if score @s aj.tv_screen.animation.move.local_anim_time matches 12.. run function animated_java:tv_screen/zzzzzzzz/animations/move/end