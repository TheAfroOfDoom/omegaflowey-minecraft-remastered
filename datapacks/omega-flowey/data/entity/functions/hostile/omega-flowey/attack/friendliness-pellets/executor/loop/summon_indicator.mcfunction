## summons an indicator at a player

# Summon indicator
# TODO: this should not vary height if the player is mid-jump -- hardcode Y-coordinate?
execute at @r[team=player] run summon minecraft:marker ~ ~ ~ {CustomName: '"Friendliness-Pellets Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","friendliness-pellets"]}

# Initialize indicator
execute as @e[tag=attack-indicator-new] run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize
