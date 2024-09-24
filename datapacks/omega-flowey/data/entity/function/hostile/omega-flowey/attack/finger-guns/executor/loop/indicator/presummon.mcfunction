# randomize x-position
scoreboard players set @s attack.position.x -19850
execute store result score @s math.0 run random value 0..1
execute if score @s math.0 matches 1 run scoreboard players set @s attack.position.x -15650

# face east if at -156.5, face west if at -198.5
scoreboard players set @s attack.indicator.yaw -9000
execute if score @s math.0 matches 1 run scoreboard players set @s attack.indicator.yaw 9000

# y-position
scoreboard players set @s attack.position.y 6300

# Randomize z-position to summon indicator at (z: [-3.5..19.5])
execute store result score @s attack.position.z run random value 305..535

# Store new position and yaw
execute store result storage attack:finger-guns x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:finger-guns y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:finger-guns z double 0.1 run scoreboard players get @s attack.position.z
execute store result storage attack:finger-guns yaw float 0.01 run scoreboard players get @s attack.indicator.yaw
# flat pitch
data merge storage attack:finger-guns { pitch: 0.0f }

function entity:hostile/omega-flowey/attack/finger-guns/executor/loop/indicator/summon with storage attack:finger-guns
