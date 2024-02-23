# Summon bullet
$execute positioned $(x) 34.5 $(z) rotated 0 0 run function animated_java:act_button/summon

# Initialize bullet
execute as @e[tag=act-button-new] at @s run function entity:soul/soul_0/act_button/initialize
