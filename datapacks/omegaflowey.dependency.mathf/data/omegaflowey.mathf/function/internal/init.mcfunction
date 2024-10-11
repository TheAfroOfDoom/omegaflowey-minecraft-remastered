#> mathf:internal/init
# 
# Initialise scoreboards for the mathf datapack.
# @handles #minecraft:load

function mathf:internal/const

scoreboard objectives remove mathf.data
scoreboard objectives add mathf.data dummy

scoreboard objectives remove mathf.io
scoreboard objectives add mathf.io dummy

#declare score_holder #i0
#declare score_holder #i1
#declare score_holder #i2

scoreboard objectives remove mathf.version
scoreboard objectives add mathf.version dummy
scoreboard players set major mathf.version 0
scoreboard players set minor mathf.version 2
scoreboard players set patch mathf.version 0
execute unless score displayVersionOnInit mathf.config matches 0 run tellraw @a [{"text":"Mathf Datapack initiated on Version ","color":"gold"},{"score":{"name":"major","objective":"mathf.version"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"minor","objective":"mathf.version"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"patch","objective":"mathf.version"},"color":"gold"}]

scoreboard objectives add mathf.config dummy
execute unless score setDefaultConfig mathf.config matches 0 run function mathf:internal/default-config
