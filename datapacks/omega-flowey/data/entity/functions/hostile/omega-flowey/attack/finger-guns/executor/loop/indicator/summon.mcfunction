# Summon indicator
$summon minecraft:item_display $(x) $(y) $(z) { CustomName: '"Finger-Guns Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","finger-guns"], interpolation_duration:1, teleport_duration:0, item_display:"head", item:{id:"minecraft:pink_wool",Count:1b}, Rotation: [$(yaw)f, $(pitch)f] }

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/finger-guns/indicator/initialize
