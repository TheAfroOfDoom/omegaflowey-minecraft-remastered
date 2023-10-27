#> mathf:fp/2dp/exp
# 
# Exponent - Raises the floating point i0 to the integer power of i1.
# 
# @input
#   score i0 mathf.io The 2dp number to be raised.
#   score i1 math.io The integer exponent.
# 
# @output
#   score o0 mathf.io The result to 2dp.
# 
# @public
# @context any

scoreboard players set powerCount mathf.data 1
scoreboard players operation temp mathf.data = i0 mathf.io

function mathf:fp/2dp/private/exp-loop
