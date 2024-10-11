#> mathf:internal/error-handling/throw-warning
# 
# Writes a warning message in chat using tellraw.
# 
# @input
#   storage mathf:throw warning
#       string
#           The warning to display.
#  
# @within mathf:internal/error-handling/error-tick

tellraw @a [{"text":"Warning - ","color":"gold"},{"nbt":"warning","storage":"mathf:throw","color":"gold"}]
data remove storage mathf:throw warning
