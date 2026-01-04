# Summon indicator
summon minecraft:marker ~ ~ ~ {CustomName:'"Soul 2 Indicator"', Tags:["omega-flowey-remastered","soul","soul-indicator","soul-indicator-new","soul_2"]}

# Initialize bullet
execute as @e[tag=soul-indicator-new] at @s run function entity:soul/soul_2/indicator/initialize
