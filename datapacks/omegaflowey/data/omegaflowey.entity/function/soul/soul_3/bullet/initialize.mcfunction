function omegaflowey.entity:soul/shared/bullet/initialize
tag @s add soul_3
data merge entity @s { CustomName: "'Soul 3 Shoe'" }

# Randomize animation frame index so the rows of shoes aren't
# all tapping at the same animation index
execute store result score @s aj.omegaflowey_tap.frame run random value 0..26

# Start animation
function animated_java:omegaflowey_soul_3_shoe/animations/omegaflowey_tap/resume
