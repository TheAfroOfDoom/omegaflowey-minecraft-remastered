#> mathf:vector/magnitude
# Gets the magnitude of a vector.
# Credit to https://gaming.stackexchange.com/a/348985
# @input
#   score i0 mathf.ioVector x (Scale 100)
#   score i1 mathf.ioVector y (Scale 100)
#   score i2 mathf.ioVector z (Scale 100)
#  
# @output
#   score o0 mathf.io       Magnitude (Scale 100)
# 
# @public
# @context any

scoreboard players operation xDiff mathf.data = i0 mathf.io
scoreboard players operation yDiff mathf.data = i1 mathf.io
scoreboard players operation zDiff mathf.data = i2 mathf.io

# Square all differences
scoreboard players operation xDiff mathf.data *= xDiff mathf.data
scoreboard players operation yDiff mathf.data *= yDiff mathf.data
scoreboard players operation zDiff mathf.data *= zDiff mathf.data

# Add distances together
scoreboard players operation distSquared mathf.data = xDiff mathf.data
scoreboard players operation distSquared mathf.data += yDiff mathf.data
scoreboard players operation distSquared mathf.data += zDiff mathf.data

# Sqrt the distSquared to get the overall distance
scoreboard players operation i0 mathf.io = distSquared mathf.data
function mathf:sqrt
