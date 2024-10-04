function entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper Indicator"'

# Add tags
tag @s add x-bullets-upper

# Set scores
scoreboard players operation @s attack.bullets.total = #attack-x-bullets-upper attack.bullets.total
scoreboard players operation @s attack.cone = #attack-x-bullets-upper attack.cone

scoreboard players operation @s attack.bullets.remaining = @s attack.bullets.total

# Face nearest player
function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/initialize/face_player
