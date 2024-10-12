## Faces closest player and summons `x-bullets-lower` bullets using `omegaflowey.attack.cone` and `attack.bullets`

# Save bone position to score
execute store result score @s omegaflowey.attack.position.x run data get entity @s Pos[0] 100
execute store result score @s omegaflowey.attack.position.y run data get entity @s Pos[1] 100
execute store result score @s omegaflowey.attack.position.z run data get entity @s Pos[2] 100

function omegaflowey.entity:utils/face_closest_player

execute store result score @s omegaflowey.attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s omegaflowey.attack.theta run data get entity @s Rotation[1]

# Store angle to first bullet in `omegaflowey.attack.phi`
scoreboard players operation @s omegaflowey.attack.phi = @s omegaflowey.attack.indicator.yaw

# Store angle between bullets in `omegaflowey.attack.d-phi`
scoreboard players operation @s omegaflowey.attack.d-phi = @s omegaflowey.attack.cone
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.total
scoreboard players remove @s omegaflowey.math.0 1
scoreboard players operation @s omegaflowey.attack.d-phi /= @s omegaflowey.math.0

# Flip `omegaflowey.attack.d-phi` for one of the eyes
scoreboard players operation @s[tag=indicator.left] omegaflowey.attack.d-phi *= #omegaflowey.const.-1 omegaflowey.math.const

# # Randomly offset `omegaflowey.attack.cone` by half `omegaflowey.attack.d-phi` to increase entropy of attack pattern (50% chance)
# execute store result score @s omegaflowey.math.1 run random value 0..1
# scoreboard players operation @s[scores={omegaflowey.math.1=0}] omegaflowey.math.0 = @s omegaflowey.attack.d-phi
# scoreboard players operation @s[scores={omegaflowey.math.1=0}] omegaflowey.math.0 /= #omegaflowey.const.2 omegaflowey.math.const
# scoreboard players operation @s[scores={omegaflowey.math.1=0}] omegaflowey.attack.phi += @s omegaflowey.math.0
