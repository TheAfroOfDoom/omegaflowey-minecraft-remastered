#> mathf:minecraft/entity-rotation-to-vector
# Finds the vector of rotation of the entity with tag mathf.entity0. The entity will have the tag mathf.entity0 removed.
# @input
#   entity mathf.entity0    The tagged entity to find the vector of.
# @output
#  score o0 mathf.io        Vector x (Scale 100)
#  score o1 mathf.io        Vector y (Scale 100)
#  score o2 mathf.io        Vector z (Scale 100)
#
# @public
# @context any

execute store result score i0 mathf.io run data get entity @e[tag=mathf.entity0,limit=1] Rotation[0] 100
execute store result score i1 mathf.io run data get entity @e[tag=mathf.entity0,limit=1] Rotation[1] 100

tag @e[tag=mathf.entity0] remove mathf.entity0

function mathf:rotation/rotation-to-vector
