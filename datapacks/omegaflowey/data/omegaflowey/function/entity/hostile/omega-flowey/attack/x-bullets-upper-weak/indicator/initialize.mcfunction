function omegaflowey:entity/hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper-Weak Indicator"'

# Add tags
tag @s add x-bullets-upper-weak

# Set scores
scoreboard players set @s omegaflowey.attack.bullets.total 3
scoreboard players set @s omegaflowey.attack.cone 27

scoreboard players operation @s omegaflowey.attack.bullets.remaining = @s omegaflowey.attack.bullets.total

# Face nearest player
function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize/face_player
