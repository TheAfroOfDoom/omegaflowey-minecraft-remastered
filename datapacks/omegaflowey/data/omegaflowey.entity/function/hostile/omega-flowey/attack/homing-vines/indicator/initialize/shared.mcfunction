function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Homing-Vines Indicator"'

# Add tags
tag @s add homing-vines

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #omegaflowey.attack.homing-vines omegaflowey.attack.indicator.clock.delay

scoreboard players set @s omegaflowey.attack.bullets.count 0
scoreboard players operation @s omegaflowey.attack.bullets.total = #omegaflowey.attack.homing-vines omegaflowey.attack.bullets.total
