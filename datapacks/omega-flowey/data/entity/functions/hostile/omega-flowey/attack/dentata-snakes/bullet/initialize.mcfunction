# Set scores
scoreboard players set @s attack.clock.i -1

# Begin animation
# function animated_java:friendliness_pellet/animations/spin/play

# Play summon sounds
playsound omega-flowey:attack.dentata-snakes.spawn hostile @a ~ ~ ~ 5 1
playsound omega-flowey:attack.dentata-snakes.summon hostile @a ~ ~ ~ 5 1

# Randomize initial yaw (-45 | 45 deg)
execute store result score @s math.0 run random value 0..1
execute if score @s math.0 matches 0 run data merge entity @s { Rotation:[45.0f, 0f] }
execute if score @s math.0 matches 1 run data merge entity @s { Rotation:[-45.0f, 0f] }

# Remove tags
tag @s remove attack-bullet-new
