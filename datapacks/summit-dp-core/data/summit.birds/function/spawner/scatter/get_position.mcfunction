data modify storage summit:temp scatter_bird.position set from entity @s Pos
kill @s
data modify storage summit:temp scatter_bird.flee_pos.x set from storage summit:temp scatter_bird.position[0]
data modify storage summit:temp scatter_bird.flee_pos.y set from storage summit:temp scatter_bird.position[1]
data modify storage summit:temp scatter_bird.flee_pos.z set from storage summit:temp scatter_bird.position[2]
