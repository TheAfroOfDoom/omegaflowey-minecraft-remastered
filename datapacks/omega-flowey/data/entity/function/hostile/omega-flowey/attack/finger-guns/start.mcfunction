## Summon finger-guns executor
summon minecraft:marker ~ ~ ~ {CustomName: '"Finger-Guns Executor"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-executor","attack-executor-new","finger-guns"]}

# Initialize attack-executor
execute as @e[tag=attack-executor-new] at @s run function entity:hostile/omega-flowey/attack/finger-guns/executor/initialize
