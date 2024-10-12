execute if score @s omegaflowey.attack.bullets.count matches 0 store result storage omegaflowey:attack.dentata-snakes math float 0.75 run scoreboard players get @s omegaflowey.attack.bullets.scale
execute if score @s omegaflowey.attack.bullets.count matches 0 store result score @s omegaflowey.attack.bullets.scale run data get storage omegaflowey:attack.dentata-snakes math 1

execute if score @s omegaflowey.attack.bullets.count matches 1.. store result storage omegaflowey:attack.dentata-snakes math float 0.9 run scoreboard players get @s omegaflowey.attack.bullets.scale
execute if score @s omegaflowey.attack.bullets.count matches 1.. store result score @s omegaflowey.attack.bullets.scale run data get storage omegaflowey:attack.dentata-snakes math 1
