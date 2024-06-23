#> mathf:sqrt
# 
# Square Roots i0.
# Credit to https://github.com/ImCoolYeah105/Datapack-Utilities/issues/5#issuecomment-433670044
# 
# @input
#   score i0 mathf.io
#       The number to be rooted.
# 
# @output
#   score o0 mathf.io
#       The result.
# 
# @public
# @context any

# If negative number is input, throw an error
execute if score i0 mathf.io matches ..-1 run data modify storage mathf:throw error set value "Cannot Square Root a negative number. (mathf:sqrt)"

scoreboard players set sqrtCount mathf.data 0
scoreboard players set sqrtValue.n-1 mathf.data 0
scoreboard players set sqrtValue.n-2 mathf.data 0
scoreboard players operation o0 mathf.io = i0 mathf.io
scoreboard players operation o0 mathf.io /= #2 mathf.const

function mathf:private/sqrt-loop

execute if score debugInfo mathf.config matches 1 run tellraw @a ["Sqrt of ",{"score":{"name":"i0","objective":"mathf.io"}}," = ",{"score":{"name":"o0","objective":"mathf.io"}}," after ",{"score":{"name":"sqrtCount","objective":"mathf.data"}}," iterations."]
