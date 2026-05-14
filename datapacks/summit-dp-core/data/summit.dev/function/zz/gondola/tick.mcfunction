execute unless score @s summit.temp matches 1.. run function summit.dev:zz/gondola/reset
scoreboard players operation #next_id summit.temp = @s summit.temp
execute store result storage summit:temp next_id int 1 run scoreboard players add #next_id summit.temp 1
execute store result storage summit:temp id int 1 run scoreboard players get @s summit.id
function summit.dev:zz/gondola/tick/nested_macro_1 with storage summit:temp {}
