$data modify entity @s transformation set value [$(dx),0f,0f,0f,$(dy),0f,0f,0f,$(dz),0f,0f,0f,0f,0f,0f,1f]
data modify storage summit:temp distance set from entity @s transformation.scale[0]
$execute facing ~$(dx) ~$(dy) ~$(dz) run tp @s ~ ~ ~ ~ ~
execute store result entity @s Rotation[0] float 0.000005 run data get entity @s Rotation[0] 100000
execute store result entity @s Rotation[1] float 0.000005 run data get entity @s Rotation[1] 100000
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0 run tp ^ ^ ^100000
data modify storage summit:temp yawCos set from entity @s Pos[0]
data modify storage summit:temp yawSin set from entity @s Pos[2]
execute store result storage summit:temp yawSinN float -1 run data get storage summit:temp yawSin 1
execute at @s positioned 0.0 0.0 0.0 rotated 0 ~ run tp ^ ^ ^1
data modify storage summit:temp pitchCos set from entity @s Pos[2]
data modify storage summit:temp pitchSin set from entity @s Pos[1]
kill @s
