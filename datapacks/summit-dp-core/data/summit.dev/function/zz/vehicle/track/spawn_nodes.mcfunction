data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
$data modify storage summit.vehicles:temp track_name set value "$(track_name)"
execute if data storage summit.vehicles:temp track.nodes[] run function summit.dev:zz/vehicle/track/spawn_nodes/iter
