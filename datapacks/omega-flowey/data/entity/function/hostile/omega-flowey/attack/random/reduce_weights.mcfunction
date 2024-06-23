## Reduce weight of attack if it was just ran
scoreboard players set @s attack.weight 2

execute if entity @s[tag=attack.random.previous_attack.bomb] run scoreboard players operation #attack-bomb attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.bomb] run tag @s remove attack.random.previous_attack.bomb

execute if entity @s[tag=attack.random.previous_attack.dentata-snakes] run scoreboard players operation #attack-dentata-snakes attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.dentata-snakes] run tag @s remove attack.random.previous_attack.dentata-snakes

execute if entity @s[tag=attack.random.previous_attack.finger-guns] run scoreboard players operation #attack-finger-guns attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.finger-guns] run tag @s remove attack.random.previous_attack.finger-guns

execute if entity @s[tag=attack.random.previous_attack.flies] run scoreboard players operation #attack-flies attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.flies] run tag @s remove attack.random.previous_attack.flies

execute if entity @s[tag=attack.random.previous_attack.friendliness-pellets] run scoreboard players operation #attack-friendliness-pellets attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.friendliness-pellets] run tag @s remove attack.random.previous_attack.friendliness-pellets

execute if entity @s[tag=attack.random.previous_attack.homing-vines] run scoreboard players operation #attack-homing-vines attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.homing-vines] run tag @s remove attack.random.previous_attack.homing-vines

execute if entity @s[tag=attack.random.previous_attack.homing-vines-save-states] run scoreboard players operation #attack-homing-vines-save-states attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.homing-vines-save-states] run tag @s remove attack.random.previous_attack.homing-vines-save-states

execute if entity @s[tag=attack.random.previous_attack.x-bullets-lower] run scoreboard players operation #attack-x-bullets-lower attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.x-bullets-lower] run tag @s remove attack.random.previous_attack.x-bullets-lower

execute if entity @s[tag=attack.random.previous_attack.x-bullets-upper] run scoreboard players operation #attack-x-bullets-upper attack.weight -= @s attack.weight
execute if entity @s[tag=attack.random.previous_attack.x-bullets-upper] run tag @s remove attack.random.previous_attack.x-bullets-upper
