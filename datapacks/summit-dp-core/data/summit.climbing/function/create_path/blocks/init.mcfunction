execute store result storage summit.climbing:master blocks.id int 1 run data get entity @n[type=minecraft:interaction, tag=summit.climbing.entrance, distance=..12] data.id
function summit.climbing:create_path/blocks/iterate_through_tiles/init {function: "summit.climbing:create_path/blocks/set_chest"}
$function summit.climbing:create_path/blocks/iterate_through_tiles/init {function:"summit.climbing:create_path/blocks/set_block with storage summit.climbing:master blocks.block_states.group_$(block_group)"}
