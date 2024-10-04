execute store result storage entity:position x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage entity:position y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage entity:position z float 0.01 run scoreboard players get @s attack.position.z
execute store result storage entity:position yaw float 1 run scoreboard players get @s attack.phi
execute store result storage entity:position pitch float 1 run scoreboard players get @s attack.theta

function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/summon_bullet with storage entity:position
