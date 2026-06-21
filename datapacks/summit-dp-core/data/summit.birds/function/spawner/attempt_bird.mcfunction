execute store result score $chance summit.temp run random value 1..100
execute store result score $bird_chance summit.temp run data get entity @s data.summit_bird.bird_chance
execute if score $bird_chance summit.temp < $chance summit.temp run return fail
scoreboard players add @s summit.bird_count 1
data modify storage summit:temp bird_spawner set from entity @s data.summit_bird
execute store result storage summit:temp bird_spawner.radius int 1000 run data get storage summit:temp bird_spawner.spawn_radius
function summit.birds:spawner/home_offset with storage summit:temp bird_spawner
execute summon minecraft:marker run function summit.birds:spawner/find_home with storage summit:temp bird_spawner
execute store result storage summit:temp bird_spawner.x_offset int 1 run random value -5..5
execute store result storage summit:temp bird_spawner.y_offset int 1 run random value -5..5
scoreboard players operation $bird_id summit.temp = @s summit.bird_id
function summit.birds:bird/spawn with storage summit:temp bird_spawner
