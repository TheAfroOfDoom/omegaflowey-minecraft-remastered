# Summon flower
$execute positioned $(x) ~ $(z) run function animated_java:soul_5_flower/summon { args: {} }

# Initialize flower
execute as @e[tag=soul-heal-new] run function entity:soul/soul_5/heal/initialize
