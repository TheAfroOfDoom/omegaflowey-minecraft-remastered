$data modify storage summit:temp dev.editNode.uuid set from storage summit:root dev.nodeList[{id:$(id)}].uuid
$data modify storage summit:temp dev.editNode.data set value "$(data)"
$data modify storage summit:temp dev.editNode.type set value "$(type)"
function summit.dev:entity/node/macro/edit_node with storage summit:temp dev.editNode
data remove storage summit:temp dev.editNode
