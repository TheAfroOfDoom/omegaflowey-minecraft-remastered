data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
data modify storage summit.vehicles:temp node set value {id: 0, position: {x: 0.0d, y: 0.0d, z: 0.0d}, rotation: {yaw: 0.0d, pitch: 0.0d}, triggers: {enter: [], exit: []}, effects: []}
data modify storage summit.vehicles:temp node.position.x set from entity @s Pos[0]
data modify storage summit.vehicles:temp node.position.y set from entity @s Pos[1]
data modify storage summit.vehicles:temp node.position.z set from entity @s Pos[2]
data modify storage summit.vehicles:temp node.rotation.yaw set from entity @s Rotation[0]
data modify storage summit.vehicles:temp node.rotation.pitch set from entity @s Rotation[1]
execute store result score #last summit.temp run data get storage summit.vehicles:temp track.nodes[-1].id
execute store result storage summit.vehicles:temp node.id int 1 run scoreboard players add #last summit.temp 1
$data modify storage summit.vehicles:main tracks[{name: "$(track_name)"}].nodes append from storage summit.vehicles:temp node
function summit.dev:zz/vehicle/node/spawn_node
