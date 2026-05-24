$data modify storage summit.vehicles:temp current_position set from entity @s data.track.nodes[{id: $(current_node)}].position
$data modify storage summit.vehicles:temp next_position set from entity @s data.track.nodes[{id: $(next_node)}].position
data modify storage summit.vehicles:temp cx set from storage summit.vehicles:temp current_position.x
data modify storage summit.vehicles:temp cy set from storage summit.vehicles:temp current_position.y
data modify storage summit.vehicles:temp cz set from storage summit.vehicles:temp current_position.z
data modify storage summit.vehicles:temp nx set from storage summit.vehicles:temp next_position.x
data modify storage summit.vehicles:temp ny set from storage summit.vehicles:temp next_position.y
data modify storage summit.vehicles:temp nz set from storage summit.vehicles:temp next_position.z
