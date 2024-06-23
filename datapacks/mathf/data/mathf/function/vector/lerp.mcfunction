#> mathf:vector/lerp
# Linearly interpolates a vector.
# @input
#   score i0 mathf.io   Interpolant (Scale 100)
#   score i1 mathf.io   Input Vector x (Scale 100)
#   score i2 mathf.io   Input Vector y (Scale 100)
#   score i3 mathf.io   Input Vector z (Scale 100)
#  
# @output
#   score o0 mathf.io   Vector x (Scale 100)
#   score o1 mathf.io   Vector y (Scale 100)
#   score o2 mathf.io   Vector z (Scale 100)
# 
# @public
# @context any

scoreboard players operation vectorInterpolant mathf.data = i0 mathf.io

scoreboard players operation endX mathf.data = i1 mathf.io
scoreboard players operation endY mathf.data = i2 mathf.io
scoreboard players operation endZ mathf.data = i3 mathf.io

scoreboard players operation i2 mathf.io = vectorInterpolant mathf.data


scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endX mathf.data
function mathf:lerp
scoreboard players operation xLerp mathf.data = o0 mathf.io

scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endY mathf.data
function mathf:lerp
scoreboard players operation yLerp mathf.data = o0 mathf.io

scoreboard players set i0 mathf.io 0
scoreboard players operation i1 mathf.io = endZ mathf.data
function mathf:lerp
scoreboard players operation zLerp mathf.data = o0 mathf.io


scoreboard players operation o0 mathf.io = xLerp mathf.data
scoreboard players operation o1 mathf.io = yLerp mathf.data
scoreboard players operation o2 mathf.io = zLerp mathf.data

execute if score debugInfo mathf.config matches 1 run tellraw @a ["Vector: (",{"score":{"name":"o0","objective":"mathf.io"}},", ", {"score":{"name":"o1","objective":"mathf.io"}},", ", {"score":{"name":"o2","objective":"mathf.io"}},")"]
