# Summon laser
$execute positioned 0.5 33.5 $(z) run function animated_java:finger_gun_laser/summon

# Copy group id to laser
execute store result storage group id int 1 run scoreboard players get @s group.id

# Initialize laser
execute as @e[tag=flies-laser-new] run function entity:hostile/omega-flowey/attack/flies/indicator/loop/laser/initialize with storage attack:flies
