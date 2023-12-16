# Summon bullet
$summon minecraft:item_display $(x) 34.5 $(z) { CustomName: '"Finger-Guns Bullet"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","finger-guns"], interpolation_duration:1, teleport_duration:1, item_display:"head", item:{id:"minecraft:yellow_wool",Count:1b} }

# Copy yaw to bullet
execute store result storage attack:finger-guns yaw float 1 run data get entity @s Rotation[0] 100

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/finger-guns/bullet/initialize
