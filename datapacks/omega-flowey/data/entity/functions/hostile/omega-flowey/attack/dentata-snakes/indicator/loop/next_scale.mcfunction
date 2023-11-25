execute if score @s attack.bullets.count matches 1 store result storage attack:dentata-snakes math float 0.5 run scoreboard players get @s attack.bullets.scale
execute if score @s attack.bullets.count matches 1 store result score @s attack.bullets.scale run data get storage attack:dentata-snakes math 1

execute if score @s attack.bullets.count matches 3.. store result storage attack:dentata-snakes math float 0.9 run scoreboard players get @s attack.bullets.scale
execute if score @s attack.bullets.count matches 3.. store result score @s attack.bullets.scale run data get storage attack:dentata-snakes math 1
