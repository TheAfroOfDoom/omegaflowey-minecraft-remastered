## Summon x-bullets-upper executor
summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Upper Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","x-bullets-upper"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize
