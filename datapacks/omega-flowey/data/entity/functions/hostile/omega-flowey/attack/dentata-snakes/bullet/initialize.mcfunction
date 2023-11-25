# Set scores
scoreboard players set @s attack.clock.i -1

# Begin animation
# function animated_java:friendliness_pellet/animations/spin/play

# Update yaw from indicator
$data merge entity @s { Rotation: [$(bullet_yaw)f, 0.0f] }

# Play summon sounds if this is a bullet-head
execute if entity @s[tag=attack-bullet-head] run playsound omega-flowey:attack.dentata-snakes.spawn hostile @a ~ ~ ~ 5 1
execute if entity @s[tag=attack-bullet-head] run playsound omega-flowey:attack.dentata-snakes.summon hostile @a ~ ~ ~ 5 1

# Remove tags
tag @s remove attack-bullet-new
