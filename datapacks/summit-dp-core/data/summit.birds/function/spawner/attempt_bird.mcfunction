execute store result score $chance summit.temp run random value 1..100
execute if score @s summit.bird_chance < $chance summit.temp run return fail
scoreboard players add @s summit.bird_count 1
data modify storage summit:temp bird_spawner set from entity @s data.summit_bird
summon minecraft:marker ~ ~ ~ {UUID: [I; -1492848484, 721961965, -1352123478, -599841932]}
execute store result score $y summit.temp run data get entity a704f09c-2b08-43ed-af68-3baadc3f2374 Pos[1]
execute store result storage summit:temp bird_spawner.under int 1 run scoreboard players add $y summit.temp 5
execute store result storage summit:temp bird_spawner.radius int 1000 run data get storage summit:temp bird_spawner.spawn_radius
function summit.birds:spawner/home_offset with storage summit:temp bird_spawner
function summit.birds:spawner/find_home with storage summit:temp bird_spawner
data modify storage summit:temp bird_spawner.pos set from entity a704f09c-2b08-43ed-af68-3baadc3f2374 Pos
data modify storage summit:temp bird_spawner.home_pos.x set from storage summit:temp bird_spawner.pos[0]
data modify storage summit:temp bird_spawner.home_pos.y set from storage summit:temp bird_spawner.pos[1]
data modify storage summit:temp bird_spawner.home_pos.z set from storage summit:temp bird_spawner.pos[2]
kill a704f09c-2b08-43ed-af68-3baadc3f2374
execute store result storage summit:temp bird_spawner.x_offset int 1 run random value -5..5
execute store result storage summit:temp bird_spawner.y_offset int 1 run random value -5..5
scoreboard players operation $bird_id summit.temp = @s summit.bird_id
function summit.birds:bird/spawn with storage summit:temp bird_spawner
