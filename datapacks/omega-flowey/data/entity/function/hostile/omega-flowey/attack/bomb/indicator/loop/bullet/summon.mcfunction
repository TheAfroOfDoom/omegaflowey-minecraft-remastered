# Summon, initialize, and animate bullet (scale-in from 0)
$execute positioned $(x) 90 $(z) run function animated_java:bomb/summon { args: { animation: 'summon', start_animation: true } }
execute as @e[tag=attack-bullet-new] at @s run function entity:hostile/omega-flowey/attack/bomb/bullet/initialize
