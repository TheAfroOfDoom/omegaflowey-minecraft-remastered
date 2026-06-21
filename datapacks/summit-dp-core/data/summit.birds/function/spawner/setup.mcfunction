tag @s add summit.bird_spawner
execute store result score $variant_count summit.temp run data get storage summit:temp bird_spawner.data.summit_bird.variant_count
execute store result storage summit:temp bird_spawner.data.summit_bird.variant_count int 1 run scoreboard players remove $variant_count summit.temp 1
data modify entity @s data set from storage summit:temp bird_spawner.data
scoreboard players set @s summit.bird_count 0
scoreboard players add $global summit.bird_id 1
scoreboard players operation @s summit.bird_id = $global summit.bird_id
