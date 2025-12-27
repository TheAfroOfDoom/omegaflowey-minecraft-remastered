# Bullet summoning setup
execute store result storage omegaflowey:attack.finger-guns x double 0.01 run data get entity @s Pos[0] 100
execute store result storage omegaflowey:attack.finger-guns z double 0.01 run data get entity @s Pos[2] 100
execute store result storage omegaflowey:attack.finger-guns yaw float 1 run data get entity @s Rotation[0] 1

# Terminate associated laser
function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/terminate with entity @s data

# Play shoot animation
function animated_java:omegaflowey_finger_gun/animations/omegaflowey_shoot/play

# Summon bullet
function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/bullet/summon with storage omegaflowey:attack.finger-guns
