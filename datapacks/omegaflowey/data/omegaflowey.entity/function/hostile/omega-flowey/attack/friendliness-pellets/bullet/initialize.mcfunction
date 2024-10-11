function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

data modify entity @s CustomName set value '"Friendliness-Pellets Bullet"'

# Add tags
tag @s add friendliness-pellets
tag @s add stationary

function gu:generate
