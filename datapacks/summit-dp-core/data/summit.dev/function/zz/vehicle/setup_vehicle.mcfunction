data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
data modify storage summit.vehicles:temp first set from storage summit.vehicles:temp track.path[0]
data modify storage summit.vehicles:temp second set from storage summit.vehicles:temp track.path[1]
tag @s add summit.vehicle
scoreboard players set @s summit.vehicles.step 1
scoreboard players set @s summit.vehicles.speed 100
$data modify entity @s data.track_name set value "$(track_name)"
function summit.dev:zz/vehicle/setup_vehicle/nested_macro_0 with storage summit.vehicles:temp {}
function summit.dev:zz/vehicle/setup_vehicle/nested_macro_1 with storage summit.vehicles:temp node.position
