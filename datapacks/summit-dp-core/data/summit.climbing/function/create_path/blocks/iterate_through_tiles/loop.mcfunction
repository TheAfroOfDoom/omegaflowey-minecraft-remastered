execute unless data storage summit.climbing:master blocks.all_tiles[0] run return 0
data modify storage summit.climbing:master blocks.current_tile set from storage summit.climbing:master blocks.all_tiles[0]
data remove storage summit.climbing:master blocks.all_tiles[0]
$execute summon minecraft:marker run function summit.climbing:create_path/blocks/iterate_through_tiles/set_marker_pos {function:"$(function)"}
$function summit.climbing:create_path/blocks/iterate_through_tiles/loop {function:"$(function)"}
