# Randomize animation frame index so the rows of stars aren't
# all rotating at the same animation index
execute store result score @s aj.roll.frame run random value 0..59

# Start animation
function animated_java:soul_2_star/animations/roll/resume

# Set scores
scoreboard players set @s soul.clock.i -1

# Remove tags
tag @s remove soul-star-new
