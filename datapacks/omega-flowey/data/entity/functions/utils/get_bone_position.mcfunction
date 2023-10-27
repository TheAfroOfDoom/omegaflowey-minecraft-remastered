# TODO this should also consider yaw but im lazy
execute store result score @s math.0 run data get entity @s Pos[0] 1000
execute store result score @s math.1 run data get entity @s transformation.translation[0] 1000
execute store result score i0 mathf.io run data get entity @s Rotation[0] 100
function mathf:trig/cos
scoreboard players operation @s math.1 *= o0 mathf.io
scoreboard players operation @s math.1 /= #1000 mathf.const
scoreboard players operation @s math.0 += @s math.1
execute store result storage aj:bone.position x float 0.001 run scoreboard players get @s math.0

execute store result score @s math.0 run data get entity @s Pos[1] 1000
execute store result score @s math.1 run data get entity @s transformation.translation[1] 1000
scoreboard players operation @s math.0 += @s math.1
execute store result storage aj:bone.position y float 0.001 run scoreboard players get @s math.0

execute store result score @s math.0 run data get entity @s Pos[2] 1000
execute store result score @s math.1 run data get entity @s transformation.translation[2] 1000
execute store result score i0 mathf.io run data get entity @s Rotation[0] 100
function mathf:trig/sin
scoreboard players operation @s math.1 *= o0 mathf.io
scoreboard players operation @s math.1 /= #1000 mathf.const
scoreboard players operation @s math.0 += @s math.1
execute store result storage aj:bone.position z float 0.001 run scoreboard players get @s math.0
