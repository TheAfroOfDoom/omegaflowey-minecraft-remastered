#> mathf:internal/tick
# 
# Per tick functions for the mathf datapack.
# 
# @handles #minecraft:tick

execute if score showErrors mathf.config matches 1 run function mathf:internal/error-handling/error-tick
