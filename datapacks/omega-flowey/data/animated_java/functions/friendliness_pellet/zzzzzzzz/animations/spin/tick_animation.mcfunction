scoreboard players add @s aj.friendliness_pellet.animation.spin.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.friendliness_pellet.animation.spin.local_anim_time
function animated_java:friendliness_pellet/zzzzzzzz/animations/spin/apply_frame_as_root
execute if score @s aj.friendliness_pellet.animation.spin.local_anim_time matches 8.. run function animated_java:friendliness_pellet/zzzzzzzz/animations/spin/end