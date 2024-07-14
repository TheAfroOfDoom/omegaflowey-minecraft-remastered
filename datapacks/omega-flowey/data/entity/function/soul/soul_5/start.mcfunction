## Summon soul_5 executor
summon minecraft:marker ~ ~ ~ { CustomName: '"Soul 5 Executor"', Tags:["omega-flowey-remastered","soul","soul-executor","soul-executor-new","soul_5"] }

# Initialize soul-executor
execute as @e[tag=soul-executor-new] at @s run function entity:soul/soul_5/executor/initialize
