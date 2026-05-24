$data modify storage summit.vehicles:temp node set from storage summit.vehicles:temp track.nodes[{id: $(first)}]
$data modify entity @s item.components."minecraft:custom_data".next_node set from storage summit.vehicles:temp track.nodes[{id: $(second)}]
