## Sum `attack.weight`s in `math.0`
scoreboard players set @s math.0 0
scoreboard players operation @s math.0 += #attack-bomb attack.weight
scoreboard players operation @s math.0 += #attack-dentata-snakes attack.weight
scoreboard players operation @s math.0 += #attack-finger-guns attack.weight
scoreboard players operation @s math.0 += #attack-friendliness-pellets attack.weight
scoreboard players operation @s math.0 += #attack-homing-vines attack.weight
scoreboard players operation @s math.0 += #attack-x-bullets-lower attack.weight
scoreboard players operation @s math.0 += #attack-x-bullets-upper attack.weight

# Assert sum is > 0
execute if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/error/zero_sum
