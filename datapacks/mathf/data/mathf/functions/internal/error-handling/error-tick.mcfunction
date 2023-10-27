#> mathf:internal/error-handling/error-tick
# 
# Displays errors when detected.
# @within mathf:internal

execute if data storage mathf:throw error run function mathf:internal/error-handling/throw-error
execute if data storage mathf:throw warning run function mathf:internal/error-handling/throw-warning
