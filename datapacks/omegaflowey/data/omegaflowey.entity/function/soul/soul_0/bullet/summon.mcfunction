# Summon bullet
$execute positioned $(x) $(y) $(z) rotated 0 0 run function animated_java:omegaflowey_soul_0_sword/summon { args: {} }

# Initialize bullet
execute as @e[tag=soul-bullet-new] at @s run function omegaflowey.entity:soul/soul_0/bullet/initialize
