#> mathf:deg-to-rad
# 
# Converts from degrees (at scale 100) to radians (at scale 1000)
# 
# @input    score   i0    mathf.io   Input in degrees.
# @output   score   o0    mathf.io   Output in radians.
# 
# @public
# @context any

scoreboard players operation temp mathf.data = i0 mathf.io

scoreboard players operation temp mathf.data *= #pi mathf.const_2dp
scoreboard players operation temp mathf.data /= #1800 mathf.const

scoreboard players operation o0 mathf.io = temp mathf.data
