# Summon bullet
$execute positioned $(x) 35 $(z) run function animated_java:finger_gun_bullet/summon

# Copy yaw to bullet
execute store result storage attack:finger-guns yaw float 1 run data get entity @s Rotation[0] 100

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/finger-guns/bullet/initialize
