# Keep consistent y-pos
teleport @s ~ 33.0 ~

# Play animation if we just stopped falling
execute unless entity @s[tag=is_done_falling] run function animated_java:bomb/animations/explode/play
execute unless entity @s[tag=is_done_falling] run stopsound @a hostile omega-flowey:attack.bomb.explode
execute unless entity @s[tag=is_done_falling] run playsound omega-flowey:attack.bomb.explode hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add is_done_falling
