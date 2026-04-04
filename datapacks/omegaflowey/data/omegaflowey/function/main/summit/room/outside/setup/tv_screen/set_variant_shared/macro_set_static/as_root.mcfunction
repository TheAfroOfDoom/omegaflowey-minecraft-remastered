playsound omega-flowey:decorative.static ambient @a[distance=..64] ~ ~ ~ 4

# Don't switch to day/night variant if in the middle of another animation
execute if entity @s[tag=is_active_death_animation] run return 0

# Check current time of day and play set_variant_day/night accordingly
execute store result score @s omegaflowey.math.0 run time query daytime
execute unless score @s omegaflowey.math.0 matches 13500..23000 run tag @s add is_daytime

execute unless entity @s[tag=is_daytime] run function animated_java:omegaflowey_tv_screen/variants/static/apply
execute if entity @s[tag=is_daytime] run function animated_java:omegaflowey_tv_screen/variants/static_noglow/apply

tag @s remove is_daytime
