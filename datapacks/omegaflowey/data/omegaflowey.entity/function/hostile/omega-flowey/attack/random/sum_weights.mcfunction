## Sum `omegaflowey.attack.weight`s in `omegaflowey.math.0`
scoreboard players set @s omegaflowey.math.0 0
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.attack.bomb omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-dentata-snakes omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-finger-guns omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-flies omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-friendliness-pellets omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-homing-vines omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-homing-vines-save-states omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-x-bullets-lower omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-x-bullets-upper omegaflowey.attack.weight
scoreboard players operation @s omegaflowey.math.0 += #attack-x-bullets-upper-save-states omegaflowey.attack.weight

# Assert sum is > 0
execute if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/error/zero_sum
