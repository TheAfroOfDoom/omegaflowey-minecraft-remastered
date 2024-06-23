#> mathf:minecraft/vector-between-entities
# Note that the mathf.entity0 and mathf.entity1 tags will be removed from the entities afterwards.
# @input
#   entity mathf.entity0    The first entity.
#   entity mathf.entity1    The second entity.
# @output
#   score o0 mathf.io       Vector X (Scale 100).
#   score o1 mathf.io       Vector Y (Scale 100).
#   score o2 mathf.io       Vector Z (Scale 100).
#
# @public
# @context any

# Get the positions of both entities
execute store result score i0 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[0] 100
execute store result score i1 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[1] 100
execute store result score i2 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[2] 100

execute store result score i3 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[0] 100
execute store result score i4 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[1] 100
execute store result score i5 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[2] 100

# Input their coords into this function
function mathf:vector/get-vector-between-points

# Remove entity tags after use
tag @e[tag=mathf.entity0] remove mathf.entity0
tag @e[tag=mathf.entity1] remove mathf.entity1
