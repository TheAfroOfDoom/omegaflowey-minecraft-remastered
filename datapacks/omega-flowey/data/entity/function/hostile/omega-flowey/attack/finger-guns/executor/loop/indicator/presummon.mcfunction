# randomize x-position
scoreboard players operation @s attack.position.x = #omega-flowey.bossfight.summit.origin.x global.flag
execute store result score @s math.0 run random value 0..1
execute if score @s math.0 matches 0 run scoreboard players remove @s attack.position.x 2100
execute if score @s math.0 matches 1 run scoreboard players add @s attack.position.x 2100

# set yaw based on randomized x-side of arena
scoreboard players set @s attack.indicator.yaw -9000
execute if score @s math.0 matches 1 run scoreboard players set @s attack.indicator.yaw 9000

# y-position
scoreboard players operation @s attack.position.y = #omega-flowey.bossfight.summit.origin.y global.flag
scoreboard players remove @s attack.position.y 400

# Randomize z-position to summon indicator at
execute store result score @s attack.position.z run random value -3200..-900
scoreboard players operation @s attack.position.z += #omega-flowey.bossfight.summit.origin.z global.flag

# Store new position and yaw
execute store result storage attack:finger-guns x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:finger-guns y double 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:finger-guns z double 0.01 run scoreboard players get @s attack.position.z
execute store result storage attack:finger-guns yaw float 0.01 run scoreboard players get @s attack.indicator.yaw
# flat pitch
data merge storage attack:finger-guns { pitch: 0.0f }

function entity:hostile/omega-flowey/attack/finger-guns/executor/loop/indicator/summon with storage attack:finger-guns
