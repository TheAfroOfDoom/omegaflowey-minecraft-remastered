execute store result storage summit:temp reset_bird.bird_count int 1 run scoreboard players get @s summit.bird_count
scoreboard players operation $id summit.bird_id = @s summit.bird_id
function summit.birds:reset/macro with storage summit:temp reset_bird
scoreboard players set @s summit.bird_count 0
