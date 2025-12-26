# Format:
# if(attack's weight > 0) -> if(random >= 0) -> if(random < attack's weight) -> choose attack
# random -= attack's weight (regardless of if an attack was ran)
# = = = #
# if random < 0, attack has been ran already

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.bomb omegaflowey.attack.weight
execute if score #omegaflowey.attack.bomb omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.bomb omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight
execute if score #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.dentata-snakes omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.finger-guns omegaflowey.attack.weight
execute if score #omegaflowey.attack.finger-guns omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.finger-guns omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.flamethrower omegaflowey.attack.weight
execute if score #omegaflowey.attack.flamethrower omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.flamethrower omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.flies omegaflowey.attack.weight
execute if score #omegaflowey.attack.flies omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.flies omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight
execute if score #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.friendliness-pellets omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.homing-vines omegaflowey.attack.weight
execute if score #omegaflowey.attack.homing-vines omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.homing-vines omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight
execute if score #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.homing-vines-save-states omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight
execute if score #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.x-bullets-lower omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.x-bullets-upper omegaflowey.attack.weight
execute if score #omegaflowey.attack.x-bullets-upper omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.x-bullets-upper omegaflowey.attack.flag

scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight
execute if score #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight matches 1.. if score @s omegaflowey.math.0 matches ..0 run return run \
  scoreboard players operation #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = #omegaflowey.attack.random.id.x-bullets-upper-save-states omegaflowey.attack.flag
