# x-position will summon at either x: -20.00 or x: +20.00
scoreboard players set @s attack.position.x 2000
execute store result score @s math.0 run random value -1..0
execute if score @s math.0 matches -1 run scoreboard players operation @s attack.position.x *= @s math.0

# face east if at -20.00, face west if at +20.00
scoreboard players set @s attack.indicator.yaw 9000
execute if score @s math.0 matches -1 run scoreboard players operation @s attack.indicator.yaw *= @s math.0

# y-position will summon at y: 33.00
scoreboard players set @s attack.position.y 3300
# z-position will summon at z: 17.00
scoreboard players set @s attack.position.z 1700

# Store new position and yaw
execute store result storage attack:flies x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:flies y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:flies z double 0.01 run scoreboard players get @s attack.position.z
execute store result storage attack:flies yaw float 0.01 run scoreboard players get @s attack.indicator.yaw
# flat pitch
data merge storage attack:flies { pitch: 0.0f }

function entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/summon with storage attack:flies
