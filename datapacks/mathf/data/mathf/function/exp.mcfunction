#> mathf:exp
# 
# Exponent - Raises i0 to the power of i1.
# 
# @input
#   score i0 mathf.io   The number to be raised.
#   score i1 math.io    The exponent.
# 
# @output
#   score o0 mathf.io   The result.
# 
# @public
# @context any

scoreboard players set powerCount mathf.data 1
scoreboard players operation temp mathf.data = i0 mathf.io

function mathf:private/exp-loop
