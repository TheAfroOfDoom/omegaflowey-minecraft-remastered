# Summon indicator-x-bullets-lower
execute at @e[tag=aj.lower_eye.bone.pupil] run summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Lower Indicator"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","x-bullets-lower"]}

# Initialize attack-indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize
