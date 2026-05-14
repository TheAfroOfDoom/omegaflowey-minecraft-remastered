scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
execute if score @s aj.animation_smithie_direct_idle.frame matches -1 run function animated_java:smithie_direct/animations/animation_smithie_direct_idle/zzz/function_keyframe_loop_patch
data remove storage animated_java:temp args
execute store result storage animated_java:temp args.frame int 1 run scoreboard players get @s aj.animation_smithie_direct_idle.frame
function animated_java:smithie_direct/animations/animation_smithie_direct_idle/zzz/apply_frame with storage animated_java:temp args
execute if score @s aj.animation_smithie_direct_idle.frame matches 119.. run return run scoreboard players set @s aj.animation_smithie_direct_idle.frame -1
scoreboard players add @s aj.animation_smithie_direct_idle.frame 1
