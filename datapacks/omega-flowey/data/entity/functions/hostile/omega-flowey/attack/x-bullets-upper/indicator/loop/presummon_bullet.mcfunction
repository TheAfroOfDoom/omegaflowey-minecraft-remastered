execute store result storage aj:bone.position x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage aj:bone.position y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage aj:bone.position z float 0.01 run scoreboard players get @s attack.position.z

function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/summon_bullet with storage aj:bone.position
