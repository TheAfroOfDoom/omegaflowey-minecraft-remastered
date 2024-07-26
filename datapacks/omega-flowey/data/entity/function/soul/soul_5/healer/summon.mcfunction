# Summon flower
# TODO(127): this model should be larger. relates to the scale-up animation we'd need
# to add for the bullet, probably
function animated_java:soul_5_flower/summon { args: {} }

# Initialize flower
execute as @e[tag=soul-healer-new] run function entity:soul/soul_5/healer/initialize
