# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.bullets.total = #attack-x-bullets-lower attack.bullets.total
scoreboard players operation @s attack.cone = #attack-x-bullets-lower attack.cone

scoreboard players operation @s attack.bullets.remaining = @s attack.bullets.total

# Remove tags
tag @s remove attack-indicator-new

# Face nearest player
function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/face_player
