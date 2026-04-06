function omegaflowey:entity/hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Lower-Weak Indicator"'

# Add tags
tag @s add x-bullets-lower-weak

# Set scores
scoreboard players set @s omegaflowey.attack.bullets.total 7
scoreboard players set @s omegaflowey.attack.cone 105

scoreboard players operation @s omegaflowey.attack.bullets.remaining = @s omegaflowey.attack.bullets.total

# Determine if this indicator belongs to the right/left eye
execute store result score @s omegaflowey.math.0 run data get entity @s Pos[0] 100
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute unless score @s omegaflowey.math.0 matches 0.. run tag @s add indicator.left

# Face nearest player
function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/face_player
