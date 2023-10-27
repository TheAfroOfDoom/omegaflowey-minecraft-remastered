#> mathf:minecraft/dist-between-entities
# Finds the distance between two entities. Note that the mathf.entity0 and mathf.entity1 tags will be removed from the entities afterwards.
# @input
#   entity mathf.entity0    The first entity with tag mathf.entity0
#   entity mathf.entity1    The second entity with tag mathf.entity1
# @output
#   score o0 mathf.io       The distance.
#
# @public
# @context any

# Get the positions of both entites
execute store result score i0 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[0]
execute store result score i1 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[1]
execute store result score i2 mathf.io as @e[tag=mathf.entity0,limit=1] run data get entity @s Pos[2]

execute store result score i3 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[0]
execute store result score i4 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[1]
execute store result score i5 mathf.io as @e[tag=mathf.entity1,limit=1] run data get entity @s Pos[2]

# Input their coords into this function
function mathf:dist-between-points

# Remove entity tags after use
tag @e[tag=mathf.entity0] remove mathf.entity0
tag @e[tag=mathf.entity1] remove mathf.entity1
