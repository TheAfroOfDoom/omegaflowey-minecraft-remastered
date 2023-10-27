#> mathf:vector/get-vector-between-points
# 
# Gets the vector (scale 100) between 2 coordinates.
# 
# @input
#   score i0 mathf.io    Initial X coordinate.
#   score i1 mathf.io    Initial Y coordinate.
#   score i2 mathf.io    Initial Z coordinate.
#   score i3 mathf.io    Terminal X coordinate.
#   score i4 mathf.io    Terminal Y coordinate.
#   score i5 mathf.io    Terminal Z coordinate.
# 
# @output
#   score o0 mathf.io    Vector X (Scale 100).
#   score o1 mathf.io    Vector Y (Scale 100).
#   score o2 mathf.io    Vector Z (Scale 100).
# 
# @public
# @context any

scoreboard players operation o0 mathf.io = i3 mathf.io
scoreboard players operation o0 mathf.io -= i0 mathf.io

scoreboard players operation o1 mathf.io = i4 mathf.io
scoreboard players operation o1 mathf.io -= i1 mathf.io

scoreboard players operation o2 mathf.io = i5 mathf.io
scoreboard players operation o2 mathf.io -= i2 mathf.io
