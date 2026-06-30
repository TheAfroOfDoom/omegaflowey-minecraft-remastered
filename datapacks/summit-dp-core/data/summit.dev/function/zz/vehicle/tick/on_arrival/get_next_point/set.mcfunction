$data modify storage summit.vehicles:temp next_node set from storage summit.vehicles:temp track.nodes[{id: $(next_node)}]
data modify entity @s data.next_node set from storage summit.vehicles:temp next_node
