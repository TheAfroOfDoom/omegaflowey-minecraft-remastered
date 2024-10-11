## Summon x-bullets-upper-save-states executor
summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Upper-Save-States Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","x-bullets-upper-save-states","should-save-state"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/initialize
