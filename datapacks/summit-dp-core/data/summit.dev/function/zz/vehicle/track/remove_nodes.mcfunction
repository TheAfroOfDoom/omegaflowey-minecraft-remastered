data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
$execute as @e[type=marker,tag=summit.vehicles.track.$(track_name)] run function summit.dev:zz/vehicle/node/delete
