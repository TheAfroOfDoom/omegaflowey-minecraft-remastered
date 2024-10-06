# Set scores
scoreboard players set @s attack.clock.i -1

# Set initial rotation
execute store result entity @s Rotation[0] float 0.01 run data get storage bullet:new yaw 1

# Add tags
tag @s add friendliness-pellets
tag @s add stationary

# Remove tags
tag @s remove attack-bullet-new

function gu:generate
