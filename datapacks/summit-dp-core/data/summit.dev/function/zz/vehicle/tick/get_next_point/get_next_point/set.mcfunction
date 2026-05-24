$data modify storage summit.vehicles:temp next_node set from storage summit.vehicles:temp track.nodes[{id: $(current_node)}]
data modify entity @s item.components."minecraft:custom_data".next_node set from storage summit.vehicles:temp next_node
