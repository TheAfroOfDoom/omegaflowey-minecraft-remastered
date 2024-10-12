# Bullet summoning setup
execute store result storage omegaflowey:attack.finger-guns x double 0.01 run data get entity @s Pos[0] 100
execute store result storage omegaflowey:attack.finger-guns z double 0.01 run data get entity @s Pos[2] 100
execute store result storage omegaflowey:attack.finger-guns yaw float 1 run data get entity @s Rotation[0] 1

# Terminate associated laser
execute on passengers if entity @s[type=minecraft:marker, tag=aj.data] run \
  function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/terminate with entity @s data

# Play shoot animation
function animated_java:finger_gun/animations/shoot/play

# Summon bullet
function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/bullet/summon with storage omegaflowey:attack.finger-guns
