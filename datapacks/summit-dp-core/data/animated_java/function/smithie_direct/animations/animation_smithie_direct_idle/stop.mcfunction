function animated_java:smithie_direct/animations/pause_all
scoreboard players set @s aj.animation_smithie_direct_idle.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:smithie_direct/animations/animation_smithie_direct_idle/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only
