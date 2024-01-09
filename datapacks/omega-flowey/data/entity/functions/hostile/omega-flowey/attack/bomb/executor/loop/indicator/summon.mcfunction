# Summon indicator
$summon minecraft:marker $(x) $(y) $(z) { CustomName: '"Bomb Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","bomb"]}

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/bomb/indicator/initialize
