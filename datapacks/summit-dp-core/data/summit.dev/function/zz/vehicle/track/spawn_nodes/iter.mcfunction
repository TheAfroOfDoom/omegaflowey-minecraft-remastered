data modify storage summit.vehicles:temp node set from storage summit.vehicles:temp track.nodes[-1]
data modify storage summit.vehicles:temp node_id set from storage summit.vehicles:temp node.id
data remove storage summit.vehicles:temp track.nodes[-1]
function summit.dev:zz/vehicle/track/spawn_nodes/iter/nested_macro_0 with storage summit.vehicles:temp {}
execute if data storage summit.vehicles:temp track.nodes[] run function summit.dev:zz/vehicle/track/spawn_nodes/iter
