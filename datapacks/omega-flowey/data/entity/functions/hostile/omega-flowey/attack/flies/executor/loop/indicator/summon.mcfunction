# Summon indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run summon minecraft:marker ~ ~ ~ { CustomName: '"Flies Indicator"', Tags: ["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","flies"], interpolation_duration: 1, item_display: "head", item: { id: "minecraft:lime_wool", Count: 1b } }

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/flies/indicator/initialize
