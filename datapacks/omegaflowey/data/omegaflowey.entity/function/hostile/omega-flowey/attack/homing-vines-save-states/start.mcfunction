## Summon homing-vines executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Homing-Vines-Save-States Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","homing-vines-save-states","should-save-state"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/initialize
