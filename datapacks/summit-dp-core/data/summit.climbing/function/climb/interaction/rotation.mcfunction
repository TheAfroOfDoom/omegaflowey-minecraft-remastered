data remove storage summit.climbing:master init.rotation
$data modify storage summit.climbing:master init.rotation.angle_2 set value $(angle)
execute as @p[tag=summit.climbing.current_main, distance=..32] run function summit.climbing:climb/player/enter/rotate
