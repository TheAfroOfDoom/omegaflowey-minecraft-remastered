function omegaflowey.entity:soul/shared/initialize
tag @s add soul-star
tag @s add soul_2
data merge entity @s { CustomName: "'Soul 2 Star'" }

# Randomize animation frame index so the rows of stars aren't
# all rotating at the same animation index
execute store result score @s aj.omegaflowey_roll.frame run random value 0..59

# Start animation
function animated_java:omegaflowey_soul_2_star/animations/omegaflowey_roll/resume
