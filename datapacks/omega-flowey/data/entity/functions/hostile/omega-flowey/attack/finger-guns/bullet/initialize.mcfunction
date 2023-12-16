# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-finger-guns attack.speed.z

# Play bullet shoot sound
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 3 1
# playsound omega-flowey:attack.finger-guns.shoot hostile @a ~ ~ ~ 5 1

# Set pitch and yaw from input
execute store result entity @s Rotation[0] float 0.01 run data get storage attack:finger-guns yaw
data modify entity @s Rotation[1] set value 0.0f

# Start animation (just a hack to further lengthen the vine)
# function animated_java:homing_vine/animations/default/play

# Remove tags
tag @s remove attack-bullet-new