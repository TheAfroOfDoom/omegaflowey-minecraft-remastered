## Summon soul_0 executor
summon minecraft:marker ~ ~ ~ { CustomName: '"Soul 0 Executor"', Tags:["omega-flowey-remastered","soul","soul-executor","soul-executor-new","soul_0"] }

# Initialize soul-executor
execute as @e[tag=soul-executor-new] at @s run function entity:soul/soul_0/executor/initialize
