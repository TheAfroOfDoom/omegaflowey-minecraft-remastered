# Summon bullet
execute positioned 0 33.1 -68 rotated 0 0 run function animated_java:soul_5_gun/summon { args: {} }

# Initialize bullet
execute as @e[tag=soul-indicator-new] at @s run function entity:soul/soul_5/indicator/initialize
