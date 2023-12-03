scoreboard players add @s aj.homing_vine.animation.default.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.homing_vine.animation.default.local_anim_time
function animated_java:homing_vine/zzzzzzzz/animations/default/apply_frame_as_root
execute if score @s aj.homing_vine.animation.default.local_anim_time matches 1.. run function animated_java:homing_vine/zzzzzzzz/animations/default/end