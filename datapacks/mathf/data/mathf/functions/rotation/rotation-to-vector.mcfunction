#> mathf:rotation/rotation-to-vector
# Finds the vector of a rotation.
# @input
#   score i0 mathf.io   X Rotation.
#   score i1 mathf.io   Y Rotation.
#  
# @output
#   score o0 mathf.io   Vector X (Scale 100).
#   score o1 mathf.io   Vector Y (Scale 100).
#   score o2 mathf.io   Vector Z (Scale 100).
# 
# @public
# @context any

# Cheat by using Minecraft's ^ coord system
summon marker 0 0 0 {Tags:["mathf.rot_dummy","mathf.entity0"]}
execute store result entity @e[tag=mathf.entity0,limit=1] Rotation[0] float 0.01 run scoreboard players get i0 mathf.io
execute store result entity @e[tag=mathf.entity0,limit=1] Rotation[1] float 0.01 run scoreboard players get i1 mathf.io

execute as @e[tag=mathf.entity0,limit=1] at @s run summon marker ^ ^ ^1 {Tags:["mathf.rot_dummy","mathf.entity1"]}

function mathf:minecraft/vector-between-entities

kill @e[tag=mathf.rot_dummy]

execute if score debugInfo mathf.config matches 1 run tellraw @a ["Vector: (",{"score":{"name":"o0","objective":"mathf.io"}},", ", {"score":{"name":"o1","objective":"mathf.io"}},", ", {"score":{"name":"o2","objective":"mathf.io"}},")"]
