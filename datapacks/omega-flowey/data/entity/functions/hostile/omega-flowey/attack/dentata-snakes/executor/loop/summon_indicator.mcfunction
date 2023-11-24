# Summon indicator
summon minecraft:marker ~ ~ ~ { CustomName: '"Dentata-Snakes Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","dentata-snakes"] }

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/initialize
