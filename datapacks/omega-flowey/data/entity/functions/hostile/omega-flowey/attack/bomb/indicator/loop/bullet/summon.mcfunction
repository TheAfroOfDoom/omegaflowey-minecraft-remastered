# Summon bullet
$execute positioned $(x) 45 $(z) rotated 0 0 run function animated_java:bomb/summon

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/bomb/bullet/initialize
