data remove storage animated_java:temp args
$execute store result storage animated_java:temp args.frame int 1 run scoreboard players set @s aj.animation_smithie_direct_speaking.frame $(frame)
execute at @s run function animated_java:smithie_direct/animations/animation_smithie_direct_speaking/zzz/set_frame with storage animated_java:temp args
