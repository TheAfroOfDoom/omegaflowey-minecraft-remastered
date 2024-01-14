## Summon bomb executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Bomb Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","bomb"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/bomb/executor/initialize
