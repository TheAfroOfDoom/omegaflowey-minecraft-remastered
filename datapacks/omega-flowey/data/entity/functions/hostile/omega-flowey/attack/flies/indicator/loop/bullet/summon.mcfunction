# Summon bullet
$execute positioned $(x) $(y) $(z) run summon minecraft:item_display ~ ~ ~ { CustomName: '"Flies Bullet"', Tags: ["omega-flowey-remastered","hostile","groupable","omega-flowey","attack","attack-bullet","attack-bullet-new","flies"], interpolation_duration: 1, teleport_duration: 1, item_display: "head", item: { id: "minecraft:green_wool", Count: 1b } }

# Initialize bullet
execute as @e[tag=attack-bullet-new] at @s run function entity:hostile/omega-flowey/attack/flies/bullet/initialize

# Decrement bullets remaining to summon
scoreboard players remove @s attack.bullets.remaining 1
