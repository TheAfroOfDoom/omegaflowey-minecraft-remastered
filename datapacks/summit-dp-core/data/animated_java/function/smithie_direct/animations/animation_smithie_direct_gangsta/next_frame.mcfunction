execute if score @s aj.animation_smithie_direct_gangsta.frame matches 41.. run scoreboard players set @s aj.animation_smithie_direct_gangsta.frame 1
data remove storage animated_java:temp args
execute store result storage animated_java:temp args.frame int 1 run scoreboard players get @s aj.animation_smithie_direct_gangsta.frame
execute at @s run function animated_java:smithie_direct/animations/animation_smithie_direct_gangsta/zzz/apply_frame with storage animated_java:temp args
scoreboard players add @s aj.animation_smithie_direct_gangsta.frame 1
