function entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Bomb Indicator"'

# Add tags
tag @s add bomb
tag @s add groupable

# Set scores
scoreboard players operation @s attack.indicator.clock.length = #attack-bomb attack.indicator.clock.length
