scoreboard players operation $bird_count summit.temp = @s summit.bird_count
execute store result score $time1 summit.temp run schedule function summit.birds:spawner/scatter/go/main 1 append
execute store result score $time2 summit.temp run schedule function summit.birds:spawner/scatter/go/main 6 append
execute store result score $time3 summit.temp run schedule function summit.birds:spawner/scatter/go/main 11 append
scoreboard players operation $id summit.bird_id = @s summit.bird_id
execute store result storage summit:temp scatter_bird.bird_count int 1 run scoreboard players get @s summit.bird_count
data modify storage summit:temp scatter_bird.fly_sound set from entity @s data.summit_bird.fly_sound
data modify storage summit:temp scatter_bird.scare_sound set from entity @s data.summit_bird.scare_sound
function summit.birds:spawner/scatter/macro with storage summit:temp scatter_bird
scoreboard players operation @s summit.bird_count = $bird_count summit.temp
tag @s add summit.bird_cooldown
execute store result score @s summit.bird_timer run schedule function summit.birds:spawner/cooldown/main 100 append
