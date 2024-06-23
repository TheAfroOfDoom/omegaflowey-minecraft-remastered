#> mathf:internal/error-handling/throw-error
# 
# Writes a error message in chat using tellraw.
# 
# @input
#   storage mathf:throw error
#       string
#           The error to display.
# 
# @within mathf:internal/error-handling/error-tick

tellraw @a [{"text":"Error - ","color":"red"},{"nbt":"error","storage":"mathf:throw","color":"red"}]
data remove storage mathf:throw error
