## faces closest player and summons `x-bullets-upper` bullets using `omegaflowey.attack.cone` and `attack.bullets`

scoreboard players set @s omegaflowey.attack.bullets.clock.i -1

# Save bone position to score
execute store result score @s omegaflowey.attack.position.x run data get entity @s Pos[0] 100
execute store result score @s omegaflowey.attack.position.y run data get entity @s Pos[1] 100
execute store result score @s omegaflowey.attack.position.z run data get entity @s Pos[2] 100

function omegaflowey.entity:utils/face_closest_player

execute store result score @s omegaflowey.attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s omegaflowey.attack.theta run data get entity @s Rotation[1]

# Store angle to left-most bullet in omegaflowey.attack.phi
scoreboard players operation @s omegaflowey.attack.phi = @s omegaflowey.attack.indicator.yaw
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.cone
scoreboard players operation @s omegaflowey.math.0 /= #omegaflowey.const.2 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.phi -= @s omegaflowey.math.0

# Store angle between bullets in omegaflowey.attack.d-phi
scoreboard players operation @s omegaflowey.attack.d-phi = @s omegaflowey.attack.cone
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.total
scoreboard players remove @s omegaflowey.math.0 1
scoreboard players operation @s omegaflowey.attack.d-phi /= @s omegaflowey.math.0
