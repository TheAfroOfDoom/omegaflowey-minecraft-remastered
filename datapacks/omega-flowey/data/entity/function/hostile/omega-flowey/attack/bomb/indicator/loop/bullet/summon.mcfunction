# Summon and initialize bullet
$execute positioned $(x) 60 $(z) run function animated_java:bomb/summon
execute as @e[tag=attack-bullet-new] at @s run function entity:hostile/omega-flowey/attack/bomb/bullet/initialize
