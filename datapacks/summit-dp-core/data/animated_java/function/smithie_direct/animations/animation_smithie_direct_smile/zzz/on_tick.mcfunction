scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
data remove storage animated_java:temp args
execute store result storage animated_java:temp args.frame int 1 run scoreboard players get @s aj.animation_smithie_direct_smile.frame
function animated_java:smithie_direct/animations/animation_smithie_direct_smile/zzz/apply_frame with storage animated_java:temp args
execute if score @s aj.animation_smithie_direct_smile.frame matches 60.. run return run function animated_java:smithie_direct/animations/animation_smithie_direct_smile/pause
scoreboard players add @s aj.animation_smithie_direct_smile.frame 1
