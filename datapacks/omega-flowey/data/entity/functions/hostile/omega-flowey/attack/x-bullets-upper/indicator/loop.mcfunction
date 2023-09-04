# Face closest player
teleport @s ~ ~ ~ facing entity @p[team=player]

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

function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/summon_bullets

function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/terminate
