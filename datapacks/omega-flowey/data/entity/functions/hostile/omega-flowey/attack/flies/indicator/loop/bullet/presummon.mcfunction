execute store result score @s math.0 run random value 0..99
# 65% chance the bullet spawns along the top wall
execute if score @s math.0 matches 0..64 run function entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon/along_top
# otherwise the bullet spawns along the wall across from the indicator
execute if score @s math.0 matches 65..99 run function entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon/along_side

# y: 33.00
scoreboard players set @s attack.position.y 3400

execute store result storage attack:flies x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:flies y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:flies z double 0.01 run scoreboard players get @s attack.position.z

# Store `group.id` for next bullet
execute store result storage group id int 1 run scoreboard players get @s group.id

# Summon bullet
function entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/summon with storage attack:flies
