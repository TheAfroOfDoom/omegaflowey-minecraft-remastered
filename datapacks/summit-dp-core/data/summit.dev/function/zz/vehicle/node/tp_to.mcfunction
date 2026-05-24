data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
data remove storage summit.vehicles:temp node
$data modify storage summit.vehicles:temp node set from storage summit.vehicles:temp track.nodes[{id: $(node_id)}]
execute unless data storage summit.vehicles:temp node run return run tellraw @p {text: "Specified node does not exist!", color: "red"}
function summit.dev:zz/vehicle/node/tp_to/tp_to_node with storage summit.vehicles:temp node.position
