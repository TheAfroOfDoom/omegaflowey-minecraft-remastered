# Summon flower
function animated_java:soul_5_flower/summon { args: {} }

# Initialize flower
execute as @e[tag=soul-healer-new] run function entity:soul/soul_5/healer/initialize
