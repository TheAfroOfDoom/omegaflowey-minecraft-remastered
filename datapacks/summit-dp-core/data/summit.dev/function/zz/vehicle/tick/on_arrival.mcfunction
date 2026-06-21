function summit.dev:zz/vehicle/tick/on_arrival/side_effects
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute store result score #len summit.temp if data storage summit.vehicles:temp track.path[]
scoreboard players add @s summit.vehicles.step 1
scoreboard players operation @s summit.vehicles.step %= #len summit.temp
execute store result storage summit.vehicles:temp next_index int 1 run scoreboard players get @s summit.vehicles.step
function summit.dev:zz/vehicle/tick/on_arrival/get_next_point with storage summit.vehicles:temp {}
