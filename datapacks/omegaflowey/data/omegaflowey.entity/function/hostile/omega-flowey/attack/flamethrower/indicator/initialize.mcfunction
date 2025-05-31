function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Bomb Indicator"'

# Add tags
tag @s add flamethrower

# Set scores
scoreboard players operation @s omegaflowey.attack.indicator.clock.length = #omegaflowey.attack.flamethrower omegaflowey.attack.indicator.clock.length
