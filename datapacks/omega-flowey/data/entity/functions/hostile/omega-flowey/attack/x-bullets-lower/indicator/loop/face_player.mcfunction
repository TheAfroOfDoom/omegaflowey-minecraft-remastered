## Faces closest player and summons `x-bullets-lower` bullets using `attack.cone` and `attack.bullets`

# TODO this needs to NOT be a distance check
execute as @e[tag=aj.lower_eye.locator.pupil,sort=nearest,limit=1] run function entity:utils/store_position

function entity:utils/face_closest_player with storage entity:position

execute store result score @s attack.indicator.yaw run data get entity @s Rotation[0]
execute store result score @s attack.theta run data get entity @s Rotation[1]

# Store angle to first bullet in attack.phi
scoreboard players operation @s attack.phi = @s attack.indicator.yaw

# Store angle between bullets in attack.d-phi
scoreboard players operation @s attack.d-phi = @s attack.cone
scoreboard players operation @s math.0 = @s attack.bullets
scoreboard players remove @s math.0 1
scoreboard players operation @s attack.d-phi /= @s math.0

# Determine if this is left/right eye
scoreboard players set @s math.0 0
execute if entity @e[tag=aj.lower_eye.bone.pupil,distance=..2,y_rotation=169..171] run scoreboard players set @s math.0 1

# Flip `attack.d-phi` for one of the eyes
scoreboard players operation @s[scores={math.0=1}] attack.d-phi *= #-1 mathf.const

# Randomly offset `attack.cone` by half `attack.d-phi` to increase entropy of attack pattern
scoreboard players set @s random.range 2
scoreboard players set @s random.min 0
function omega-flowey:rng
scoreboard players operation @s[scores={random=0}] math.0 = @s attack.d-phi
scoreboard players operation @s[scores={random=0}] math.0 /= #2 mathf.const
scoreboard players operation @s[scores={random=0}] attack.phi += @s math.0

# Initialize attack.bullets.remaining
scoreboard players operation @s attack.bullets.remaining = @s attack.bullets

function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/loop/summon_bullet with storage entity:position
