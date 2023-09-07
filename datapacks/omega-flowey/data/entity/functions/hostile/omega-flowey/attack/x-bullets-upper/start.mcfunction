# Setup Group ID System
# function theafroofdoom:entity/group_id/setup

# TODO: remove this hard-coded attack origin
execute unless entity @e[tag=attack-origin-omega-flowey] run summon minecraft:marker 0 36 -7 {CustomName: '"Attack Origin"', Tags: ["omega-flowey-remastered","hostile","omega-flowey","attack","attack-origin","attack-origin-omega-flowey"]}

# Summon indicator-x-bullets-upper
execute at @e[tag=attack-origin-omega-flowey] run summon minecraft:marker ~ ~ ~ {CustomName: '"X-Bullets-Upper Indicator"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","x-bullets-upper"]}

# Restore Group IDs
# function theafroofdoom:entity/group_id/restore

# Initialize attack_indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize
