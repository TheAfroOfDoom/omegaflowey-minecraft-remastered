## summons an indicator at a player

# Summon indicator
# TODO: this should not vary height if the player is mid-jump -- hardcode Y-coordinate?
execute at @r[team=player] run summon minecraft:marker ~ ~ ~ {CustomName: '"Friendliness-Pellets Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","friendliness-pellets"], Passengers: [{id:"minecraft:item_display",Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","friendliness-pellets"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:golden_sword",Count:1b,tag:{CustomModelData:4}}}]}

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize
