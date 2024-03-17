# Summon blinking-lane
function animated_java:homing_vine_blinking_lane/summon

# Copy yaw to blinking-lane
$teleport @s ~ ~ ~ facing $(x) $(y) $(z)
execute store result storage attack:homing-vines yaw float 1 run data get entity @s Rotation[0]
execute store result storage attack:homing-vines pitch float 1 run data get entity @s Rotation[1]

# Copy group id to blinking-lane
execute store result storage group id int 1 run scoreboard players get @s group.id

# Initialize blinking lane
execute as @e[tag=homing-vines-blinking-lane-new] run function entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/initialize with storage attack:homing-vines
