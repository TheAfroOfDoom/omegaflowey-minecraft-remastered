execute store result entity @s data.x float 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result entity @s data.y float 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result entity @s data.z float 0.01 run scoreboard players get @s omegaflowey.attack.position.z
execute store result entity @s data.yaw float 1 run scoreboard players get @s omegaflowey.attack.phi
execute store result entity @s data.pitch float 1 run scoreboard players get @s omegaflowey.attack.theta

function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/summon_bullet with entity @s data