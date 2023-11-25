# bullet summoning setup
execute store result storage attack:dentata-snakes x float 0.01 run scoreboard players get @s attack.bullets.position.x
execute store result storage attack:dentata-snakes z float 0.01 run scoreboard players get @s attack.bullets.position.z

execute store result storage attack:dentata-snakes scale float 0.01 run scoreboard players get @s attack.bullets.scale
# Passthrough indicator yaw to bullet
execute store result storage attack:dentata-snakes bullet_yaw float 1 run data get entity @s Rotation[0]

# passthrough yaw to summoned bullets
execute at @s run function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/summon_bullet with storage attack:dentata-snakes
