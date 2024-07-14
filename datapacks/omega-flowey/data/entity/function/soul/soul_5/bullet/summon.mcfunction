# Summon bullet
$execute positioned $(x) 34.5 $(z) rotated 0 0 run function animated_java:soul_5_sword/summon { args: {} }

# Initialize bullet
execute as @e[tag=soul-bullet-new] at @s run function entity:soul/soul_5/bullet/initialize
