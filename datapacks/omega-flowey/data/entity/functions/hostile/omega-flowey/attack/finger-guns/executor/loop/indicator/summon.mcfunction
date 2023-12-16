# Summon indicator
summon minecraft:marker ~ ~ ~ { CustomName: '"Finger-Guns Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","finger-guns"] }

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/finger-guns/indicator/initialize
