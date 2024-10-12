# randomize x-position
scoreboard players operation @s omegaflowey.attack.position.x = #omegaflowey.bossfight.summit.origin.x omegaflowey.global.flag
execute store result score @s omegaflowey.math.0 run random value 0..1
execute if score @s omegaflowey.math.0 matches 0 run scoreboard players remove @s omegaflowey.attack.position.x 1400
execute if score @s omegaflowey.math.0 matches 1 run scoreboard players add @s omegaflowey.attack.position.x 1400

# set yaw based on randomized x-side of arena
scoreboard players set @s omegaflowey.attack.indicator.yaw -9000
execute if score @s omegaflowey.math.0 matches 1 run scoreboard players set @s omegaflowey.attack.indicator.yaw 9000

# y-position
scoreboard players operation @s omegaflowey.attack.position.y = #omegaflowey.bossfight.summit.origin.y omegaflowey.global.flag
scoreboard players remove @s omegaflowey.attack.position.y 400

# Randomize z-position to summon indicator at
execute store result score @s omegaflowey.attack.position.z run random value -3200..-900
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag

# Store new position and yaw
execute store result storage attack:finger-guns x double 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage attack:finger-guns y double 0.01 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage attack:finger-guns z double 0.01 run scoreboard players get @s omegaflowey.attack.position.z
execute store result storage attack:finger-guns yaw float 0.01 run scoreboard players get @s omegaflowey.attack.indicator.yaw
# flat pitch
data merge storage attack:finger-guns { pitch: 0.0f }

function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/executor/loop/indicator/summon with storage attack:finger-guns
