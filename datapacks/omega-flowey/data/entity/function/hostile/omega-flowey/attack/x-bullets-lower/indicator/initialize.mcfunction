# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.bullets.total = #attack-x-bullets-lower attack.bullets.total
scoreboard players operation @s attack.cone = #attack-x-bullets-lower attack.cone

scoreboard players operation @s attack.bullets.remaining = @s attack.bullets.total

# Determine if this indicator belongs to the right/left eye
# HARDCODED BOUND FOR DEVELOPMENT SPEED => x: -178.0
execute store result score @s math.0 run data get entity @s Pos[0] 100
execute if score @s math.0 matches -17800.. run tag @s add indicator.left

# Remove tags
tag @s remove attack-indicator-new

# Face nearest player
function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/initialize/face_player
