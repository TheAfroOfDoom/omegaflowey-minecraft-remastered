function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Dentata-Snakes Indicator"'

# Add tags
tag @s add dentata-snakes

# Set scores
scoreboard players set @s omegaflowey.attack.bullets.count 0
scoreboard players operation @s omegaflowey.attack.bullets.clock.delay = #omegaflowey.attack.dentata-snakes omegaflowey.attack.bullets.clock.delay
scoreboard players operation @s omegaflowey.attack.bullets.clock.i = @s omegaflowey.attack.bullets.clock.delay
scoreboard players operation @s omegaflowey.attack.bullets.scale = #omegaflowey.attack.dentata-snakes omegaflowey.attack.bullets.scale
scoreboard players operation @s omegaflowey.attack.bullets.total = #omegaflowey.attack.dentata-snakes omegaflowey.attack.bullets.total

# Randomize position to summon bullet at
execute store result score @s omegaflowey.attack.bullets.position.x run random value -800..800
scoreboard players operation @s omegaflowey.attack.bullets.position.x += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
scoreboard players set @s omegaflowey.attack.bullets.position.z 750
scoreboard players operation @s omegaflowey.attack.bullets.position.z += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag

# Randomize initial yaw of bullets
execute store result score @s omegaflowey.math.0 run random value 0..1
execute if score @s omegaflowey.math.0 matches 0 run data merge entity @s { Rotation:[45.0f, 0f] }
execute if score @s omegaflowey.math.0 matches 1 run data merge entity @s { Rotation:[-45.0f, 0f] }
