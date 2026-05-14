tag @s add editingNode
$execute as $(owner) if entity @s[tag=editingNode] run scoreboard players set #temp summit.temp 420
execute unless score #temp summit.temp matches 420 run return run function summit.dev:entity/node/dialog/permission_deny
scoreboard players reset #temp summit.temp
$data modify storage summit:temp dev.editNode.text set value "$(text)"
$data modify storage summit:temp dev.editNode.id set value $(id)
$data modify storage summit:temp dev.editNode.color set value "$(color)"
data modify storage summit:temp dev.editNode.data set value "$(data)"
$function summit.dev:entity/node/dialog/edit_node_$(type) with storage summit:temp dev.editNode
tag @s remove editingNode
