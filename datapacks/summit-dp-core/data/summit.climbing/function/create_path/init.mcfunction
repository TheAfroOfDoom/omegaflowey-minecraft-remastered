data remove storage summit.climbing:master init
$data modify storage summit.climbing:master init.movement_cooldown set value $(movement_cooldown)
$data modify storage summit.climbing:master init.camera_distance set value $(camera_distance)
$data modify storage summit.climbing:master init.sound set value "$(sound)"
execute as @n[type=minecraft:item_frame, predicate=summit.climbing:is_path, tag=!summit.climbing.propagated, tag=!summit.climbing.saved] at @s rotated as @s run function summit.climbing:create_path/tick_item_frame
