# Summon act button
$execute positioned $(x) 34.5 $(z) rotated 0 0 run function animated_java:act_button/summon { args: {} }

# Initialize act button
execute as @e[tag=act-button-new] at @s run function omegaflowey.entity:soul/soul_0/act_button/initialize
