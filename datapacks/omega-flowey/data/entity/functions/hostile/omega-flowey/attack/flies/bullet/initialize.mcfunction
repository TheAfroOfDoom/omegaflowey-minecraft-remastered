# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-flies attack.speed.z

# Play bullet shoot sound
stopsound @a hostile omega-flowey:attack.flies.shoot
playsound omega-flowey:attack.flies.shoot hostile @a ~ ~ ~ 5 1

# Set pitch and yaw from input
execute store result entity @s Rotation[0] float 0.01 run data get storage attack:flies yaw
execute store result entity @s Rotation[1] float 0.01 run data get storage attack:flies pitch

# Start animation
function animated_java:finger_gun_bullet/animations/shoot/play

# Remove tags
tag @s remove attack-bullet-new
