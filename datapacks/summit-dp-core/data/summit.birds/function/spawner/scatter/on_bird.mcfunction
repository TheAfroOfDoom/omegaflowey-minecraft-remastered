scoreboard players remove $bird_count summit.temp 1
tag @s remove summit.stationary_bird
tag @s add summit.scatter_bird
execute facing entity d373ec7c-d1bb-4b7a-8c84-00a6823af4a2 eyes rotated ~180 ~-60 positioned ^ ^ ^30 summon minecraft:marker run function summit.birds:spawner/scatter/get_position
data modify entity @s data.flee_pos set from storage summit:temp scatter_bird.flee_pos
data modify entity @s data.fly_sound set from storage summit:temp scatter_bird.fly_sound
data modify entity @s data.scare_sound set from storage summit:temp scatter_bird.scare_sound
execute store result score $chance summit.temp run random value 1..3
execute if score $chance summit.temp matches 1 run scoreboard players operation @s summit.bird_timer = $time1 summit.temp
execute if score $chance summit.temp matches 2 run scoreboard players operation @s summit.bird_timer = $time2 summit.temp
execute if score $chance summit.temp matches 3 run scoreboard players operation @s summit.bird_timer = $time3 summit.temp
