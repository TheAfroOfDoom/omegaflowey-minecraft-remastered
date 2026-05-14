tag @s add summit.zipling_source_player
scoreboard players set $colliding summit.temp 0
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!summit.zipling_source_player, dx=0] on vehicle run function summit.zipline:collision/check
tag @s remove summit.zipling_source_player
execute if score $colliding summit.temp matches 1 on vehicle run function summit.zipline:collision/collide
