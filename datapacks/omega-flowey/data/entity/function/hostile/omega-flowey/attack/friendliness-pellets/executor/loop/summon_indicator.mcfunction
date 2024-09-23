## summons an indicator at a player

# Summon indicator
# NOTE: this is -4 blocks from origin's Y coordinate
execute at @r[team=player] run summon minecraft:marker ~ 63.0 ~ {CustomName: '"Friendliness-Pellets Indicator"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","friendliness-pellets"], Passengers: [{id:"minecraft:item_display",Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","friendliness-pellets"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:golden_sword",Count:1b,tag:{CustomModelData:4}}}]}

# TODO(43): this is so unbelievably hacky
# first indicator is 6 ticks slower before it starts summoning bullets
execute if score @s attack.clock.i matches 0 run scoreboard players add #attack-friendliness-pellets attack.indicator.clock.delay 6

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize

# TODO(43): this is so unbelievably hacky
execute if score @s attack.clock.i matches 0 run scoreboard players remove #attack-friendliness-pellets attack.indicator.clock.delay 6
