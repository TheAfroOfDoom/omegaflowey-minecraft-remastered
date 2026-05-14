$data modify storage summit:temp dev.editNode.uuid set from storage summit:root dev.nodeList[{id:$(id)}].uuid
$data modify storage summit:temp dev.editNode.newRef set value "$(newRef)"
data modify storage summit:temp dev.editNode.newRef set string storage summit:temp dev.editNode.newRef 1
function summit.dev:entity/node/macro/edit_node_coords with storage summit:temp dev.editNode
data remove storage summit:temp dev.editNode
