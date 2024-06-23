# Summon blinking-lane
function entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/summon/raw

# Copy yaw to blinking-lane
$teleport @s ~ ~ ~ facing $(x) $(y) $(z)
execute store result storage attack:homing-vines yaw float 1 run data get entity @s Rotation[0]
execute store result storage attack:homing-vines pitch float 1 run data get entity @s Rotation[1]

# Store indicator uuid for blinking_lane to reference later
function gu:generate
data modify storage attack:homing-vines indicator_uuid set from storage gu:main out

# Initialize blinking lane
execute as @e[tag=homing-vines-blinking-lane-new] run function entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/initialize with storage attack:homing-vines
