## Summon soul_2 executor
summon minecraft:marker ~ ~ ~ { CustomName: '"Soul 2 Executor"', Tags:["omega-flowey-remastered","soul","soul-executor","soul-executor-new","soul_2"] }

# Initialize soul-executor
execute as @e[tag=soul-executor-new] at @s run function entity:soul/soul_2/executor/initialize
