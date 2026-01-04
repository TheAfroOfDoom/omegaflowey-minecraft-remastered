# Randomize animation frame index so the rows of shoes aren't
# all tapping at the same animation index
execute store result score @s aj.tap.frame run random value 0..26

# Start animation
function animated_java:soul_2_shoe/animations/tap/resume

# Set scores
scoreboard players set @s soul.clock.i -1

# Remove tags
tag @s remove soul-bullet-new
