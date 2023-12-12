## Summon homing-vines executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Homing-Vines Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","homing-vines"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/homing-vines/executor/initialize
