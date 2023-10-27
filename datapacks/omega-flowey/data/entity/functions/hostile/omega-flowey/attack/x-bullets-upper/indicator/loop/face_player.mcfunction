## Faces closest player and summons `x-bullets-upper` bullets using `attack.cone` and `attack.bullets`

# TODO this needs to NOT be a distance check
execute as @e[tag=aj.upper_eye.bone.pupil,sort=nearest,limit=1] run function entity:utils/get_bone_position

function entity:utils/face_closest_player with storage aj:bone.position

execute store result score @s attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s attack.theta run data get entity @s Rotation[1]

# Store angle to right-most bullet in attack.phi
scoreboard players operation @s attack.phi = @s attack.cone
scoreboard players operation @s attack.phi /= #2 constant
scoreboard players operation @s attack.phi += @s attack.indicator.yaw

# Store angle between bullets in attack.d-phi
scoreboard players operation @s attack.d-phi = @s attack.cone
scoreboard players operation @s math.0 = @s attack.bullets
scoreboard players remove @s math.0 1
scoreboard players operation @s attack.d-phi /= @s math.0

# Initialize attack.bullets.remaining
scoreboard players operation @s attack.bullets.remaining = @s attack.bullets

function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/summon_bullets with storage aj:bone.position
