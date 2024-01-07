# Summon indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run function animated_java:finger_gun/summon

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/finger-guns/indicator/initialize
