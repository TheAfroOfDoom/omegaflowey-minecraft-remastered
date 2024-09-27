# Randomize x/z-position to summon bullet
# TODO: TAG_SUMMIT_HARDCODED
execute store result score @s attack.position.x run random value -1995..-1555
# TODO: TAG_SUMMIT_HARDCODED
execute store result score @s attack.position.z run random value 310..540

# Store position
execute store result storage attack:bomb x double 0.1 run scoreboard players get @s attack.position.x
execute store result storage attack:bomb z double 0.1 run scoreboard players get @s attack.position.z

# Summon bullet
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/summon with storage attack:bomb
