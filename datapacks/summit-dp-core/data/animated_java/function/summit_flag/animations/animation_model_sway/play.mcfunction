function animated_java:summit_flag/animations/pause_all
tag @s add aj.summit_flag.animation.animation_model_sway.playing
scoreboard players set @s aj.animation_model_sway.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:summit_flag/animations/animation_model_sway/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only
