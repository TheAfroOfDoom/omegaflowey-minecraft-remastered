function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper Indicator"'

# Add tags
tag @s add x-bullets-upper

# Set scores
scoreboard players operation @s omegaflowey.attack.bullets.total = #attack-x-bullets-upper omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.cone = #attack-x-bullets-upper omegaflowey.attack.cone

scoreboard players operation @s omegaflowey.attack.bullets.remaining = @s omegaflowey.attack.bullets.total

# Face nearest player
function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize/face_player
