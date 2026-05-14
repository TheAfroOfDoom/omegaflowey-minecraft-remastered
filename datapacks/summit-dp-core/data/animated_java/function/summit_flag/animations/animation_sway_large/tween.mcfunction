function animated_java:summit_flag/animations/pause_all
tag @s add aj.summit_flag.animation.animation_sway_large.playing
$scoreboard players set @s aj.tween_duration $(duration)
$scoreboard players set @s aj.animation_sway_large.frame $(to_frame)
scoreboard players operation #this aj.i = @s aj.tween_duration
tag @s add aj.transforms_only
execute at @s run function animated_java:summit_flag/animations/animation_sway_large/zzz/apply_frame {frame: 0}
$execute at @s run function animated_java:summit_flag/animations/animation_sway_large/zzz/apply_frame {frame: $(to_frame)}
tag @s remove aj.transforms_only
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get #this aj.i
