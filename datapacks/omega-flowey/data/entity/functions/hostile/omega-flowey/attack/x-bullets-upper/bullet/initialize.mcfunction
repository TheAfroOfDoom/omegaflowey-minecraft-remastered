# Set scores
scoreboard players set @s attack.clock.i -1

# Begin animation
function animated_java:projectile_star/animations/spin_and_grow/play

# Add tag
tag @s add x-bullets-upper

# Remove tag
tag @s remove attack-bullet-new
