#> mathf:debug/print-vector
# 
# Prints an input vector into chat.
# 
# @input
#   score i0 mathf.io Vector X.
#   score i1 mathf.io Vector Y.
#   score i2 mathf.io Vector Z.
# 
# @public
# @context any

tellraw @a ["Vector: (",{"score":{"name":"i0","objective":"mathf.io"}},", ", {"score":{"name":"i1","objective":"mathf.io"}},", ", {"score":{"name":"i2","objective":"mathf.io"}},")"]
