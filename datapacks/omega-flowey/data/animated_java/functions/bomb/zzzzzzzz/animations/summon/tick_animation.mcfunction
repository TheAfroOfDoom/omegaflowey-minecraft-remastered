scoreboard players add @s aj.bomb.animation.summon.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.bomb.animation.summon.local_anim_time
function animated_java:bomb/zzzzzzzz/animations/summon/apply_frame_as_root
execute if score @s aj.bomb.animation.summon.local_anim_time matches 10.. run function animated_java:bomb/zzzzzzzz/animations/summon/end