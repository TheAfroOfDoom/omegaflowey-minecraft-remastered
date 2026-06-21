particle minecraft:dust{color: [0.2d, 0.4d, 1], scale: 0.75d} ~ ~ ~ 0 0 0 0 1
execute unless entity @s[distance=..1.5] positioned ^ ^ ^1 run function summit.wind:debug/collision_markers/ray
