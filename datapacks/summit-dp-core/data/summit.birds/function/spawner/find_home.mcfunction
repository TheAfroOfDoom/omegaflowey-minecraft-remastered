$tp @s ~$(x_offset) ~ ~$(y_offset)
data modify storage summit:temp bird_spawner.pos set from entity @s Pos
data modify storage summit:temp bird_spawner.home_pos.x set from storage summit:temp bird_spawner.pos[0]
data modify storage summit:temp bird_spawner.home_pos.y set from storage summit:temp bird_spawner.pos[1]
data modify storage summit:temp bird_spawner.home_pos.z set from storage summit:temp bird_spawner.pos[2]
kill @s
