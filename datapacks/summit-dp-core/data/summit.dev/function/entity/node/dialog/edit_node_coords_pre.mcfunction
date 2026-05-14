tag @s add editingNode
$execute as $(owner) if entity @s[tag=editingNode] run scoreboard players set #temp summit.temp 420
execute unless score #temp summit.temp matches 420 run return run function summit.dev:entity/node/dialog/permission_deny
scoreboard players reset #temp summit.temp
$data modify storage summit:temp dev.editNode.ref set value "$(ref)"
$data modify storage summit:temp dev.editNode.id set value $(id)
data modify storage summit:temp dev.editNode.newRef set value "$(newRef)"
function summit.dev:entity/node/dialog/edit_node_coords with storage summit:temp dev.editNode
tag @s remove editingNode
