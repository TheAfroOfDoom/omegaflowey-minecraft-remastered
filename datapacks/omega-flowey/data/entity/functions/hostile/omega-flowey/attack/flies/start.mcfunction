## Summon flies executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Flies Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","flies"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/flies/executor/initialize
