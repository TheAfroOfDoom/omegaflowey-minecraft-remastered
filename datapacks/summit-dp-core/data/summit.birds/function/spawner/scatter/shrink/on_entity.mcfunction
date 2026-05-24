data modify entity @s transformation.scale set value [0.0f, 0.0f, 0.0f]
tag @s add summit.shrinking_bird
scoreboard players operation @s summit.bird_timer = $time summit.temp
