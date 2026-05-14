data remove storage summit.climbing:master init.tile_data.pos
$data modify storage summit.climbing:master init.saved_tiles."$(pos)" set from storage summit.climbing:master init.tile_data
$data modify storage summit.climbing:master init.current_tile.direction set from storage summit.climbing:master init.saved_tiles."$(pos)".direction
$data modify storage summit.climbing:master init.current_tile.pos set value $(pos)
data modify storage summit.climbing:master init.all_tiles append from storage summit.climbing:master init.current_tile
tag @s remove summit.climbing.propagated
tag @s add summit.climbing.saved
