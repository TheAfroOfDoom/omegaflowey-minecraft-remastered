#> mathf:fp/2dp/sqrt
# 
# Square Roots the 2dp floating point i0.
# Credit to https://github.com/ImCoolYeah105/Datapack-Utilities/issues/5#issuecomment-433670044
# 
# @input
#   score i0 mathf.io The number to be rooted.
# 
# @output
#   score o0 mathf.io The result.
# 
# @public
# @context any

scoreboard players operation i0 mathf.io *= #100 mathf.const
function mathf:sqrt
