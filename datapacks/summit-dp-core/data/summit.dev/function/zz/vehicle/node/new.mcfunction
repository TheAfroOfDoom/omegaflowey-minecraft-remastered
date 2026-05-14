data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @p {text: "Specified track does not exist!", color: "red"}
data modify storage summit.vehicles:temp node set value {id: 0, position: [0.0d, 0.0d, 0.0d], rotation: [0.0d, 0.0d], triggers: {enter: [], exit: []}, effects: []}
data modify storage summit.vehicles:temp node.position set from entity @s Pos
data modify storage summit.vehicles:temp node.position set from entity @s Rotation
execute store result storage summit.vehicles:temp node.id int 1 run data get storage summit.vehicles:temp track.nodes
$data modify storage summit.vehicles:main tracks[{name: "$(track_name)"}].nodes append from storage summit.vehicles:temp node
function summit.dev:zz/vehicle/node/spawn_node
