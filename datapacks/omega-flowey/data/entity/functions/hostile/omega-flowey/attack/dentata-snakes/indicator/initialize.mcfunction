# Remove Tags
tag @s remove attack-indicator-new

# Randomize x-coordinate to summon bullet at [-15.00..15.00]
execute store result storage attack:dentata-snakes x float 0.01 run random value -1500..1500
# z = 6
data merge storage attack:dentata-snakes { z: -5 }

# Summon bullet
function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/summon_bullet with storage attack:dentata-snakes

# Terminate
function entity:hostile/omega-flowey/attack/dentata-snakes/indicator/terminate
