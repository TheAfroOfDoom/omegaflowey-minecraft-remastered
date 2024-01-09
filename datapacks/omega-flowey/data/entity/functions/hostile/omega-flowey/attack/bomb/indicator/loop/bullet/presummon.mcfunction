# Bullet summoning setup
execute store result storage attack:bomb x double 0.01 run data get entity @s Pos[0] 100
execute store result storage attack:bomb z double 0.01 run data get entity @s Pos[2] 100

# Terminate associated laser
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/laser/terminate

# Summon bullet
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/summon with storage attack:bomb
