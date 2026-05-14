kill @e[tag=summit.climbing.entrance, type=minecraft:interaction]
kill @e[tag=summit.climbing.climber, type=minecraft:marker]
kill @e[tag=summit.climbing.mannequin, type=minecraft:mannequin]
tag @e remove summit.climbing.entrance
tag @e remove summit.climbing.saved
tag @e remove summit.climbing.propagated
tag @e remove summit.climbing.entry
scoreboard players set #global summit.climbing.path_id 0
data remove storage summit.climbing:paths paths
data remove storage summit.climbing:master init.tile_data
data remove storage summit.climbing:master init.saved_tiles
data remove storage summit.climbing:master init.id
