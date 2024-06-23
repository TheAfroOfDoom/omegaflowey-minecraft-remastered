## Summon friendliness-pellets executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Friendliness-Pellets Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","friendliness-pellets"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/friendliness-pellets/executor/initialize
