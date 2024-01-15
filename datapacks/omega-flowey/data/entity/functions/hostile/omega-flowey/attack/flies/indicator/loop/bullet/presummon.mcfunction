# Bullet summoning setup
execute store result storage attack:flies x double 0.01 run data get entity @s Pos[0] 100
execute store result storage attack:flies z double 0.01 run data get entity @s Pos[2] 100

# Terminate associated laser
function entity:hostile/omega-flowey/attack/flies/indicator/loop/laser/terminate

# Play shoot animation
function animated_java:finger_gun/animations/shoot/play

# Summon bullet
function entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/summon with storage attack:flies
