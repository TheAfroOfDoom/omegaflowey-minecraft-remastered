# Summon blinking-lane
summon minecraft:item_display ~ ~ ~ { CustomName: '"Homing-Vines Blinking Lane"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","homing-vines","homing-vines-blinking-lane","homing-vines-blinking-lane-new"], interpolation_duration:1, item_display:"head", item:{id:"minecraft:red_wool",Count:1b} }

# Copy yaw to blinking-lane
$teleport @s ~ ~ ~ facing $(x) $(y) $(z)
execute store result storage attack:homing-vines yaw float 1 run data get entity @s Rotation[0]
execute store result storage attack:homing-vines pitch float 1 run data get entity @s Rotation[1]

# Copy group id to blinking-lane
execute store result storage group id int 1 run scoreboard players get @s group.id

# Initialize blinking lane
execute as @e[tag=homing-vines-blinking-lane-new] run function entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/blinking_lane with storage attack:homing-vines
