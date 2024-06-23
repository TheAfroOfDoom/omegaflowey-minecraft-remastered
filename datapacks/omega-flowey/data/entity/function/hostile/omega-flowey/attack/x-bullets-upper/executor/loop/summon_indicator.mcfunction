# Summon indicators at each upper_eye pupil locators (2 total)
execute at @e[tag=aj.upper_eye.locator.pupil] run summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Upper Indicator"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","x-bullets-upper"]}

# Initialize attack-indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize

# Decrement number of indicators left to summon
scoreboard players remove @s attack.indicator.remaining 1
