#> mathf:rad-to-deg
# 
# Converts from radians (at scale 1000) to degrees (at scale 100)
# 
# @input score i0 mathf.io  Input in radians (scale 1000).
# @output score o0 mathf.io Output in degrees (scale 100).
# 
# @public
# @context any

scoreboard players operation temp mathf.data = i0 mathf.io

scoreboard players operation temp mathf.data *= #1800 mathf.const
scoreboard players operation temp mathf.data /= #pi mathf.const_2dp

scoreboard players operation o0 mathf.io = temp mathf.data
