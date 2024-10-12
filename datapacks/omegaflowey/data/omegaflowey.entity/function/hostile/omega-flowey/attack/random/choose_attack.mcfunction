# Format:
# if(attack's weight > 0) -> if(random >= 0) -> if(random < attack's weight) -> run attack
# random -= attack's weight (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

scoreboard players operation @s math.0 -= #attack-bomb omegaflowey.attack.weight
execute if score #attack-bomb omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/bomb
execute if score #attack-bomb omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-dentata-snakes omegaflowey.attack.weight
execute if score #attack-dentata-snakes omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/dentata-snakes
execute if score #attack-dentata-snakes omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-finger-guns omegaflowey.attack.weight
execute if score #attack-finger-guns omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/finger-guns
execute if score #attack-finger-guns omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-flies omegaflowey.attack.weight
execute if score #attack-flies omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/flies
execute if score #attack-flies omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-friendliness-pellets omegaflowey.attack.weight
execute if score #attack-friendliness-pellets omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/friendliness-pellets
execute if score #attack-friendliness-pellets omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-homing-vines omegaflowey.attack.weight
execute if score #attack-homing-vines omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines
execute if score #attack-homing-vines omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-homing-vines-save-states omegaflowey.attack.weight
execute if score #attack-homing-vines-save-states omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines-save-states
execute if score #attack-homing-vines-save-states omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-x-bullets-lower omegaflowey.attack.weight
execute if score #attack-x-bullets-lower omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-lower
execute if score #attack-x-bullets-lower omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-x-bullets-upper omegaflowey.attack.weight
execute if score #attack-x-bullets-upper omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-upper
execute if score #attack-x-bullets-upper omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0

scoreboard players operation @s math.0 -= #attack-x-bullets-upper-save-states omegaflowey.attack.weight
execute if score #attack-x-bullets-upper-save-states omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-upper-save-states
execute if score #attack-x-bullets-upper-save-states omegaflowey.attack.weight matches 1.. if score @s math.0 matches ..0 run return 0
