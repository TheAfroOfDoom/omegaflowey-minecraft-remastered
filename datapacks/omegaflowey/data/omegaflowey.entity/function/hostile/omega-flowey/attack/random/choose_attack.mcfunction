# Format:
# if(attack's weight > 0) -> if(random >= 0) -> if(random < attack's weight) -> run attack
# random -= attack's weight (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.bomb omegaflowey.attack.weight
execute if score #omegaflowey.attack.bomb omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/bomb
execute if score #omegaflowey.attack.bomb omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight
execute if score #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/dentata-snakes
execute if score #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.finger-guns omegaflowey.attack.weight
execute if score #omegaflowey.attack.finger-guns omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/finger-guns
execute if score #omegaflowey.attack.finger-guns omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.flies omegaflowey.attack.weight
execute if score #omegaflowey.attack.flies omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/flies
execute if score #omegaflowey.attack.flies omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight
execute if score #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/friendliness-pellets
execute if score #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.homing-vines omegaflowey.attack.weight
execute if score #omegaflowey.attack.homing-vines omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines
execute if score #omegaflowey.attack.homing-vines omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight
execute if score #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/homing-vines-save-states
execute if score #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight
execute if score #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-lower
execute if score #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #attack-x-bullets-upper omegaflowey.attack.weight
execute if score #attack-x-bullets-upper omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-upper
execute if score #attack-x-bullets-upper omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight
execute if score #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack/x-bullets-upper-save-states
execute if score #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return 0
