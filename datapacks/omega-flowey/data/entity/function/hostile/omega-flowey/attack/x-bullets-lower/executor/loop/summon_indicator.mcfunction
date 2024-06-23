# Summon indicators at each lower_eye pupil locators (2 total)
execute at @e[tag=aj.lower_eye.locator.pupil] run summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Lower Indicator"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","x-bullets-lower"]}

# Initialize attack-indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize

# Decrement number of indicators left to summon
scoreboard players remove @s attack.indicator.remaining 1
