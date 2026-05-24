execute store result score #len summit.temp run data get entity @s data.track.path
execute store result score #current summit.temp run data get entity @s data.current
scoreboard players operation #next summit.temp = #current summit.temp
execute store result entity @s data.current int 1 run scoreboard players add #next summit.temp 1
execute unless score #next summit.temp < #len summit.temp run return run kill @s
execute store result storage summit.vehicles:temp current int 1 run scoreboard players get #current summit.temp
execute store result storage summit.vehicles:temp next int 1 run scoreboard players get #next summit.temp
data modify storage summit.vehicles:temp speed set from entity @s data.speed
function summit.dev:zz/vehicle/track/plot/particles/nested_macro_0 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/track/plot/particles/nested_macro_1 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/track/plot/particles/nested_macro_2 with storage summit.vehicles:temp {}
