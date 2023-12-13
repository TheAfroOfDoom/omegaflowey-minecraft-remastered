## Reduce weight of attack if it was just ran
execute if entity @s[tag=attack.random.previous_attack.dentata-snakes] run scoreboard players remove #attack-dentata-snakes attack.weight 1
execute if entity @s[tag=attack.random.previous_attack.dentata-snakes] run tag @s remove attack.random.previous_attack.dentata-snakes

execute if entity @s[tag=attack.random.previous_attack.friendliness-pellets] run scoreboard players remove #attack-friendliness-pellets attack.weight 1
execute if entity @s[tag=attack.random.previous_attack.friendliness-pellets] run tag @s remove attack.random.previous_attack.friendliness-pellets

execute if entity @s[tag=attack.random.previous_attack.homing-vines] run scoreboard players remove #attack-homing-vines attack.weight 1
execute if entity @s[tag=attack.random.previous_attack.homing-vines] run tag @s remove attack.random.previous_attack.homing-vines

execute if entity @s[tag=attack.random.previous_attack.x-bullets-lower] run scoreboard players remove #attack-x-bullets-lower attack.weight 1
execute if entity @s[tag=attack.random.previous_attack.x-bullets-lower] run tag @s remove attack.random.previous_attack.x-bullets-lower

execute if entity @s[tag=attack.random.previous_attack.x-bullets-upper] run scoreboard players remove #attack-x-bullets-upper attack.weight 1
execute if entity @s[tag=attack.random.previous_attack.x-bullets-upper] run tag @s remove attack.random.previous_attack.x-bullets-upper
