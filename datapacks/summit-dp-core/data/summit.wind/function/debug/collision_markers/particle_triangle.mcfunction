particle minecraft:dust{color: [0.1d, 0.2d, 1], scale: 1} ~ ~ ~ 0 0 0 0 1
particle minecraft:dust{color: [0.3d, 0.7d, 1], scale: 0.3d} ^ ^ ^0.1 0 0 0 0 1
particle minecraft:dust{color: [0.3d, 0.7d, 1], scale: 0.3d} ^ ^ ^0.2 0 0 0 0 1
particle minecraft:dust{color: [0.3d, 0.7d, 1], scale: 0.3d} ^ ^ ^0.3 0 0 0 0 1
particle minecraft:dust{color: [0.3d, 0.7d, 1], scale: 0.3d} ^ ^ ^0.4 0 0 0 0 1
particle minecraft:dust{color: [0.3d, 0.7d, 1], scale: 0.3d} ^ ^ ^0.5 0 0 0 0 1
$execute positioned $(Ax) $(Ay) $(Az) facing entity @s feet run function summit.wind:debug/collision_markers/ray
$execute positioned $(Bx) $(By) $(Bz) facing entity @s feet run function summit.wind:debug/collision_markers/ray
$execute positioned $(Cx) $(Cy) $(Cz) facing entity @s feet run function summit.wind:debug/collision_markers/ray
