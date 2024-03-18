# Format:
# if(attack's weight > 0) -> if(random >= 0) -> if(random < attack's weight) -> run attack
# random -= attack's weight (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

scoreboard players operation @s math.0 -= #attack-bomb attack.weight
execute if score #attack-bomb attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/bomb
execute if score #attack-bomb attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-dentata-snakes attack.weight
execute if score #attack-dentata-snakes attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/dentata-snakes
execute if score #attack-dentata-snakes attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-finger-guns attack.weight
execute if score #attack-finger-guns attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/finger-guns
execute if score #attack-finger-guns attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-flies attack.weight
execute if score #attack-flies attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/flies
execute if score #attack-flies attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-friendliness-pellets attack.weight
execute if score #attack-friendliness-pellets attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/friendliness-pellets
execute if score #attack-friendliness-pellets attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-homing-vines attack.weight
execute if score #attack-homing-vines attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines
execute if score #attack-homing-vines attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-homing-vines-save-states attack.weight
execute if score #attack-homing-vines-save-states attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines-save-states
execute if score #attack-homing-vines-save-states attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-x-bullets-lower attack.weight
execute if score #attack-x-bullets-lower attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-lower
execute if score #attack-x-bullets-lower attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-x-bullets-upper attack.weight
execute if score #attack-x-bullets-upper attack.weight matches 1.. if score @s math.0 matches ..0 run function entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-upper
execute if score #attack-x-bullets-upper attack.weight matches 1.. if score @s math.0 matches ..0 run return 0
