# x-position will summon at either x: -21.00 or x: +21.00
scoreboard players set @s attack.position.x 2100
execute store result score @s math.0 run random value -1..0
execute if score @s math.0 matches -1 run scoreboard players operation @s attack.position.x *= @s math.0

# face east if at -22.00, face west if at +22.00
scoreboard players set @s attack.indicator.yaw 9000
execute if score @s math.0 matches -1 run scoreboard players operation @s attack.indicator.yaw *= @s math.0

# y-position will summon at y: 33.00
scoreboard players set @s attack.position.y 3300

# Randomize z-position to summon bullet at (z: [-3.5..19.5])
execute store result score @s attack.position.z run random value -35..195

# Store new position and yaw
execute store result storage attack:finger-guns x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:finger-guns y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:finger-guns z double 0.1 run scoreboard players get @s attack.position.z
execute store result storage attack:finger-guns yaw float 0.01 run scoreboard players get @s attack.indicator.yaw
# flat pitch
data merge storage attack:finger-guns { pitch: 0.0f }

function entity:hostile/omega-flowey/attack/finger-guns/executor/loop/indicator/summon with storage attack:finger-guns
