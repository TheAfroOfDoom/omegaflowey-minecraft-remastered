## Faces closest player and summons `x-bullets-lower` bullets using `omegaflowey.attack.cone` and `attack.bullets`

function omegaflowey.entity:utils/store_position
# Save bone position to score
execute store result score @s attack.position.x run data get storage entity:position x
execute store result score @s attack.position.y run data get storage entity:position y
execute store result score @s attack.position.z run data get storage entity:position z

function omegaflowey.entity:utils/face_closest_player

execute store result score @s omegaflowey.attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s omegaflowey.attack.theta run data get entity @s Rotation[1]

# Store angle to first bullet in `attack.phi`
scoreboard players operation @s attack.phi = @s omegaflowey.attack.indicator.yaw

# Store angle between bullets in `attack.d-phi`
scoreboard players operation @s attack.d-phi = @s omegaflowey.attack.cone
scoreboard players operation @s math.0 = @s omegaflowey.attack.bullets.total
scoreboard players remove @s math.0 1
scoreboard players operation @s attack.d-phi /= @s math.0

# Flip `attack.d-phi` for one of the eyes
scoreboard players operation @s[tag=indicator.left] attack.d-phi *= #-1 math.const

# # Randomly offset `omegaflowey.attack.cone` by half `attack.d-phi` to increase entropy of attack pattern (50% chance)
# execute store result score @s math.1 run random value 0..1
# scoreboard players operation @s[scores={math.1=0}] math.0 = @s attack.d-phi
# scoreboard players operation @s[scores={math.1=0}] math.0 /= #2 math.const
# scoreboard players operation @s[scores={math.1=0}] attack.phi += @s math.0
