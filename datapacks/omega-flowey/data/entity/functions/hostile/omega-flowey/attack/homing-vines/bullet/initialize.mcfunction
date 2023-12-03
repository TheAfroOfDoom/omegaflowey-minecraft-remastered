# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-homing-vines attack.speed.z

# Play bullet summon sound
# This also stops any already-playing summon sounds to accurately match what Undertale's homing-vines attack sounds like
stopsound @a hostile omega-flowey:attack.homing-vines.summon
playsound omega-flowey:attack.homing-vines.summon hostile @a ~ ~ ~ 5 1

# Set pitch and yaw from input
execute store result entity @s Rotation[0] float 1 run data get storage attack:homing-vines bullet_yaw
execute store result entity @s Rotation[1] float 1 run data get storage attack:homing-vines bullet_pitch

# Remove tags
tag @s remove attack-bullet-new
