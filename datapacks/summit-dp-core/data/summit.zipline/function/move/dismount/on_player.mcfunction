attribute @s minecraft:camera_distance modifier remove summit:zipline
tag @s remove summit.riding_zipline
execute rotated ~ ~-10 run function player_motion:api/launch_looking
