function summit.birds:reset_spawner
scoreboard players add $global summit.bird_id 1
scoreboard players operation @s summit.bird_id = $global summit.bird_id
