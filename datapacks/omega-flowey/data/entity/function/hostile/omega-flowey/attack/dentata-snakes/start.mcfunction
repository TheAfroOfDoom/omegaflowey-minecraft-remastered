## Summon dentata-snakes executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Dentata-Snakes Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","dentata-snakes"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/dentata-snakes/executor/initialize
