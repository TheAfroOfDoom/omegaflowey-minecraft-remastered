# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-bomb attack.speed.z

# Play bullet shoot sound
playsound omega-flowey:attack.bomb.shoot hostile @a ~ ~ ~ 5 1

# Set pitch and yaw from input
execute store result entity @s Rotation[0] float 0.01 run data get storage attack:bomb yaw
execute store result entity @s Rotation[1] float 0.01 run data get storage attack:bomb pitch

# Remove tags
tag @s remove attack-bullet-new
