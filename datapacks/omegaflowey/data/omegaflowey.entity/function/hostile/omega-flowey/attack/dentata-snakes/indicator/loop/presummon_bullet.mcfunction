# bullet summoning setup
execute store result storage omegaflowey:attack.dentata-snakes x float 0.01 run scoreboard players get @s omegaflowey.attack.bullets.position.x
execute store result storage omegaflowey:attack.dentata-snakes z float 0.01 run scoreboard players get @s omegaflowey.attack.bullets.position.z

execute store result storage omegaflowey:attack.dentata-snakes scale float 0.01 run scoreboard players get @s omegaflowey.attack.bullets.scale
# Passthrough indicator yaw to bullet
execute store result storage omegaflowey:attack.dentata-snakes bullet_yaw float 1 run data get entity @s Rotation[0]

# passthrough yaw to summoned bullets
execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/summon_bullet with storage omegaflowey:attack.dentata-snakes
