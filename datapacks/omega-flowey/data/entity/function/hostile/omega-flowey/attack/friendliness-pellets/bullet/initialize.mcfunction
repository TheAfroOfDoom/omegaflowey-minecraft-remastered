# Set scores
scoreboard players set @s attack.clock.i -1

# Begin animation
function animated_java:friendliness_pellet/animations/spin/play

# Set initial rotation
execute store result entity @s Rotation[0] float 0.01 run data get storage bullet:new yaw 1

# Add tags
tag @s add friendliness-pellets
tag @s add groupable
tag @s add stationary

# Remove tags
tag @s remove attack-bullet-new

# Copy group.id from parent `attack-indicator`
function entity:group/copy with storage group
