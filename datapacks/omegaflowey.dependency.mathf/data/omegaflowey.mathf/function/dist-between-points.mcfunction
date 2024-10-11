#> mathf:dist-between-points
# 
# Gets the distance in whole blocks between 2 coordinates.
# 
# @input
#   score i0 mathf.io    Point 1 X coordinate.
#   score i1 mathf.io    Point 1 Y coordinate.
#   score i2 mathf.io    Point 1 Z coordinate.
#   score i3 mathf.io    Point 2 X coordinate.
#   score i4 mathf.io    Point 2 Y coordinate.
#   score i5 mathf.io    Point 2 Z coordinate.
# 
# @output
#   score o0 mathf.io    The distance as an int.
# 
# @public
# @context any

# Get differences on each axis
scoreboard players operation xDiff mathf.data = i0 mathf.io
scoreboard players operation xDiff mathf.data -= i3 mathf.io

scoreboard players operation yDiff mathf.data = i1 mathf.io
scoreboard players operation yDiff mathf.data -= i4 mathf.io

scoreboard players operation zDiff mathf.data = i2 mathf.io
scoreboard players operation zDiff mathf.data -= i5 mathf.io

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
