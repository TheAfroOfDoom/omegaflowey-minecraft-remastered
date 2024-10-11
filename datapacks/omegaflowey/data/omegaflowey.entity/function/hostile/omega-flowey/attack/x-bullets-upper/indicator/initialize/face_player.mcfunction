## faces closest player and summons `x-bullets-upper` bullets using `attack.cone` and `attack.bullets`

scoreboard players set @s attack.bullets.clock.i -1

function omegaflowey.entity:utils/store_position
# Save bone position to score
execute store result score @s attack.position.x run data get storage entity:position x
execute store result score @s attack.position.y run data get storage entity:position y
execute store result score @s attack.position.z run data get storage entity:position z

function omegaflowey.entity:utils/face_closest_player

execute store result score @s attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s attack.theta run data get entity @s Rotation[1]

# Store angle to left-most bullet in attack.phi
scoreboard players operation @s attack.phi = @s attack.indicator.yaw
scoreboard players operation @s math.0 = @s attack.cone
scoreboard players operation @s math.0 /= #2 mathf.const
scoreboard players operation @s attack.phi -= @s math.0

# Store angle between bullets in attack.d-phi
scoreboard players operation @s attack.d-phi = @s attack.cone
scoreboard players operation @s math.0 = @s attack.bullets.total
scoreboard players remove @s math.0 1
scoreboard players operation @s attack.d-phi /= @s math.0
