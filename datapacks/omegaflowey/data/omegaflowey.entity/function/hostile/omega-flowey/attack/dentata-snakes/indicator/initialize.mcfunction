function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Dentata-Snakes Indicator"'

# Add tags
tag @s add dentata-snakes

# Set scores
scoreboard players set @s omegaflowey.attack.bullets.count 0
scoreboard players operation @s omegaflowey.attack.bullets.clock.delay = #attack-dentata-snakes omegaflowey.attack.bullets.clock.delay
scoreboard players operation @s omegaflowey.attack.bullets.clock.i = @s omegaflowey.attack.bullets.clock.delay
scoreboard players operation @s omegaflowey.attack.bullets.scale = #attack-dentata-snakes omegaflowey.attack.bullets.scale
scoreboard players operation @s omegaflowey.attack.bullets.total = #attack-dentata-snakes omegaflowey.attack.bullets.total

# Randomize position to summon bullet at
execute store result score @s omegaflowey.attack.bullets.position.x run random value -800..800
scoreboard players operation @s omegaflowey.attack.bullets.position.x += #omega-flowey.bossfight.summit.origin.x omegaflowey.global.flag
scoreboard players set @s omegaflowey.attack.bullets.position.z -750
scoreboard players operation @s omegaflowey.attack.bullets.position.z += #omega-flowey.bossfight.summit.origin.z omegaflowey.global.flag

# Randomize initial yaw of bullets
execute store result score @s omegaflowey.math.0 run random value 0..1
execute if score @s omegaflowey.math.0 matches 0 run data merge entity @s { Rotation:[135.0f, 0f] }
execute if score @s omegaflowey.math.0 matches 1 run data merge entity @s { Rotation:[-135.0f, 0f] }
