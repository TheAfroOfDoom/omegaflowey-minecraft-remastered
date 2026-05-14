data remove storage animated_java:temp args
$execute store result storage animated_java:temp args.frame int 1 run scoreboard players set @s aj.animation_sway_large.frame $(frame)
execute at @s run function animated_java:summit_flag/animations/animation_sway_large/zzz/apply_frame with storage animated_java:temp args
