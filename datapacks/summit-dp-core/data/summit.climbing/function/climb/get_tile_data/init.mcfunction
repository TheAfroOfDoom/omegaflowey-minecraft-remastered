data modify entity @s data.pos set from entity @s Pos
function summit.climbing:climb/get_tile_data/get with entity @s data
execute unless entity @s[tag=summit.climbing.initialized_climber] run return 1
execute unless data entity @s data.tile_data.entry run return 2
execute at @s run function summit.climbing:climb/player/exit/end_sequence/init with entity @s data
