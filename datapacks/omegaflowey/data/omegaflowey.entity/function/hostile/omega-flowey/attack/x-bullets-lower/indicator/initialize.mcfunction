function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Lower Indicator"'

# Add tags
tag @s add x-bullets-lower

# Set scores
scoreboard players operation @s omegaflowey.attack.bullets.total = #attack-x-bullets-lower omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.cone = #attack-x-bullets-lower omegaflowey.attack.cone

scoreboard players operation @s omegaflowey.attack.bullets.remaining = @s omegaflowey.attack.bullets.total

# Determine if this indicator belongs to the right/left eye
execute store result score @s omegaflowey.math.0 run data get entity @s Pos[0] 100
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.bossfight.summit.origin.x omegaflowey.global.flag
execute if score @s omegaflowey.math.0 matches 0.. run tag @s add indicator.left

# Face nearest player
function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/face_player
