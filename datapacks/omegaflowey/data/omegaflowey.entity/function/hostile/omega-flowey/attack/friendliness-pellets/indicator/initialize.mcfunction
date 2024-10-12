function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Friendliness-Pellets Indicator"'

# Add tags
tag @s add friendliness-pellets

# Inputted scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #attack-friendliness-pellets omegaflowey.attack.indicator.clock.delay

scoreboard players set @s omegaflowey.attack.bullets.clock.i -1
scoreboard players set @s omegaflowey.attack.bullets.count 0
scoreboard players operation @s omegaflowey.attack.bullets.clock.delay = #attack-friendliness-pellets omegaflowey.attack.bullets.clock.delay
scoreboard players operation @s omegaflowey.attack.bullets.total = #attack-friendliness-pellets omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.indicator.animation.index = #attack-friendliness-pellets omegaflowey.attack.indicator.animation.index
scoreboard players operation @s omegaflowey.attack.indicator.radius = #attack-friendliness-pellets omegaflowey.attack.indicator.radius

# Calculated scores
scoreboard players set @s omegaflowey.attack.d-phi 360
scoreboard players operation @s omegaflowey.attack.d-phi /= @s omegaflowey.attack.bullets.total

# Summon and initialize blinking-ring
function animated_java:friendliness_pellet_ring/summon { args: {} }
data modify entity @s data.corresponding_ring_uuid set from storage gu:main out

# Randomize initial yaw
execute store result entity @s Rotation[0] float 0.01 run random value 0..35999
execute store result score @s math.0 run data get entity @s Rotation[0] 100
