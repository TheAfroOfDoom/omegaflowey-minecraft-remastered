execute if score @s aj.animation_model_sway.frame matches 31.. run scoreboard players set @s aj.animation_model_sway.frame 1
data remove storage animated_java:temp args
execute store result storage animated_java:temp args.frame int 1 run scoreboard players get @s aj.animation_model_sway.frame
execute at @s run function animated_java:summit_flag/animations/animation_model_sway/zzz/apply_frame with storage animated_java:temp args
scoreboard players add @s aj.animation_model_sway.frame 1
