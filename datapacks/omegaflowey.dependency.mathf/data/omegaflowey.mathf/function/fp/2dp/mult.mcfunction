#> mathf:fp/2dp/mult
# 
# Multiplies a 2dp floating point by another floating point.
# 
# @input
#   score i0 mathf.io First Number.
#   score i1 mathf.io Second Number.
# 
# @output score o0 mathf.io Result.
# 
# @public
# @context any

scoreboard players operation o0 mathf.io = i0 mathf.io
scoreboard players operation o0 mathf.io *= i1 mathf.io
scoreboard players operation o0 mathf.io /= #100 mathf.const
