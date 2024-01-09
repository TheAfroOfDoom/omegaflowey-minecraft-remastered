# Summon indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run function animated_java:bomb/summon

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/bomb/indicator/initialize
