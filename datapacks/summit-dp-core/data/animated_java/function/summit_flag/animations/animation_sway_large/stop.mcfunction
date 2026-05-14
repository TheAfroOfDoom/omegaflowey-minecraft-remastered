function animated_java:summit_flag/animations/pause_all
scoreboard players set @s aj.animation_sway_large.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:summit_flag/animations/animation_sway_large/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only
