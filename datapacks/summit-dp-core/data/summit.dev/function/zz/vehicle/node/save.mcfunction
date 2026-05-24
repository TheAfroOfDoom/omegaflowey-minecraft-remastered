data modify storage summit.vehicles:temp node set from entity @s data.node
data merge storage summit.vehicles:temp {node: {position: {x: 0.0d, y: 0.0d, z: 0.0d}, rotation: {yaw: 0.0d, pitch: 0.0d}}}
data modify storage summit.vehicles:temp node.position.x set from entity @s Pos[0]
data modify storage summit.vehicles:temp node.position.y set from entity @s Pos[1]
data modify storage summit.vehicles:temp node.position.z set from entity @s Pos[2]
data modify storage summit.vehicles:temp node.rotation.yaw set from entity @s Rotation[0]
data modify storage summit.vehicles:temp node.rotation.pitch set from entity @s Rotation[1]
$data modify storage summit.vehicles:main tracks[{name: "$(track_name)"}].nodes[{id: $(node_id)}] set from storage summit.vehicles:temp node
data modify entity @s data.node set from storage summit.vehicles:temp node
