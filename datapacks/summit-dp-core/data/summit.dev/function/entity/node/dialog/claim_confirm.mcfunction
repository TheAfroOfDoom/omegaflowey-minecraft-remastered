$data modify storage summit:temp dev.editNode.uuid set from storage summit:root dev.nodeList[{id:$(id)}].uuid
$data modify storage summit:temp dev.editNode.color set value "$(color)"
function summit.dev:entity/node/macro/edit_node_claim with storage summit:temp dev.editNode
data remove storage summit:temp dev.editNode
