# Randomize x-position to summon bullet at (x: [-22..22])
execute store result score @s attack.position.x run random value -220..220

# Randomize z-position to summon bullet at (z: [-4..19])
execute store result score @s attack.position.z run random value -40..190

# Store position
execute store result storage attack:bomb x double 0.1 run scoreboard players get @s attack.position.x
execute store result storage attack:bomb z double 0.1 run scoreboard players get @s attack.position.z

# Summon bullet
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/summon with storage attack:bomb
