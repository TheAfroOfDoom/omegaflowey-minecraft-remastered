#> mathf:vector/normalise
# Normalises a vector.
# @input
#   Vector x (Scale 100) = i0 mathf.io
#   Vector y (Scale 100) = i1 mathf.io
#   Vector z (Scale 100) = i2 mathf.io
#  
# @output
#   Normalised Vector x (Scale 100) = o0 mathf.io
#   Normalised Vector y (Scale 100) = o1 mathf.io
#   Normalised Vector z (Scale 100) = o2 mathf.io
# 
# @public
# @context any

scoreboard players operation vecX mathf.data = i0 mathf.io
scoreboard players operation vecY mathf.data = i1 mathf.io
scoreboard players operation vecZ mathf.data = i2 mathf.io

function mathf:vector/magnitude
scoreboard players operation magnitude mathf.data = o0 mathf.io

scoreboard players operation o0 mathf.io = vecX mathf.data
scoreboard players operation o0 mathf.io *= #100 mathf.const
scoreboard players operation o0 mathf.io /= magnitude mathf.data

scoreboard players operation o1 mathf.io = vecY mathf.data
scoreboard players operation o1 mathf.io *= #100 mathf.const
scoreboard players operation o1 mathf.io /= magnitude mathf.data

scoreboard players operation o2 mathf.io = vecZ mathf.data
scoreboard players operation o2 mathf.io *= #100 mathf.const
scoreboard players operation o2 mathf.io /= magnitude mathf.data

execute if score debugInfo mathf.config matches 1 run tellraw @a ["Vector: (",{"score":{"name":"o0","objective":"mathf.io"}},", ", {"score":{"name":"o1","objective":"mathf.io"}},", ", {"score":{"name":"o2","objective":"mathf.io"}},")"]
