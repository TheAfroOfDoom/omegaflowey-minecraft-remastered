data remove storage animated_java:temp args
$execute store result storage animated_java:temp args.frame int 1 run scoreboard players set @s aj.animation_model_sway.frame $(frame)
execute at @s run function animated_java:summit_flag/animations/animation_model_sway/zzz/set_frame with storage animated_java:temp args
