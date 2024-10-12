# Randomize x/z-position to summon bullet
execute store result score @s attack.position.x run random value -150..150
scoreboard players operation @s attack.position.x *= #10 math.const
scoreboard players operation @s attack.position.x += #omega-flowey.bossfight.summit.origin.x omegaflowey.global.flag

execute store result score @s attack.position.z run random value -315..-85
scoreboard players operation @s attack.position.z *= #10 math.const
scoreboard players operation @s attack.position.z += #omega-flowey.bossfight.summit.origin.z omegaflowey.global.flag

# Store position
execute store result storage attack:bomb x double 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:bomb z double 0.01 run scoreboard players get @s attack.position.z

# Summon bullet
function omegaflowey.entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/summon with storage attack:bomb
