#> mathf:lerp
# 
# Lerp (Linearly Interpolate)
# @input
#   score i0 mathf.io    The start point.
#   score i1 mathf.io    The end point.
#   score i2 mathf.io    The interpolant.
# 
# @output
#   score o0 mathf.io    The result.
# 
# @public
# @context any

# Throw warning if interpolant is not between 0 and 100.
execute unless score i2 mathf.io matches 0..100 run data modify storage mathf:throw warning set value "Interpolant was clamped from 0-100. (mathf:lerp)"
execute unless score i2 mathf.io matches 0..100 run scoreboard players operation i0 mathf.io %= #100 mathf.const

scoreboard players operation start mathf.data = i0 mathf.io
scoreboard players operation end mathf.data = i1 mathf.io

scoreboard players operation range mathf.data = end mathf.data
scoreboard players operation range mathf.data -= start mathf.data

scoreboard players operation interpolant mathf.data = i2 mathf.io
scoreboard players operation interpolant mathf.data *= range mathf.data
scoreboard players operation interpolant mathf.data /= #100 mathf.const
scoreboard players operation interpolant mathf.data += start mathf.data

scoreboard players operation o0 mathf.io = interpolant mathf.data
