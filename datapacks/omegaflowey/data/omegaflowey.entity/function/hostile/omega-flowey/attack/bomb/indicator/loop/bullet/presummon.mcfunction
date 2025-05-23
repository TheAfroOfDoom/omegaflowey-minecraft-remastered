# Randomize x/z-position to summon bullet
execute store result score @s omegaflowey.attack.position.x run random value -150..150
scoreboard players operation @s omegaflowey.attack.position.x *= #omegaflowey.const.10 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.x += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag

execute store result score @s omegaflowey.attack.position.z run random value 85..315
scoreboard players operation @s omegaflowey.attack.position.z *= #omegaflowey.const.10 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag

# Store position
execute store result storage omegaflowey:attack.bomb x double 0.01 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:attack.bomb z double 0.01 run scoreboard players get @s omegaflowey.attack.position.z

# Summon bullet
function omegaflowey.entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/summon with storage omegaflowey:attack.bomb
