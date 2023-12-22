## Summon x-bullets-lower executor
# TODO(48): add error when try to start `x-bullets` attack when the corresponding eye entity model doesn't exist
summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Lower Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","x-bullets-lower"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/initialize
