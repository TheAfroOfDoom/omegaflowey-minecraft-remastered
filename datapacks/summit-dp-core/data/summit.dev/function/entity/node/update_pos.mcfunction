$data modify storage summit:root dev.nodeList[{id:$(id)}].x set from entity @s Pos[0]
$data modify storage summit:root dev.nodeList[{id:$(id)}].y set from entity @s Pos[1]
$data modify storage summit:root dev.nodeList[{id:$(id)}].z set from entity @s Pos[2]
execute if entity @s[tag=summit.node.dimension_set] run return 1
execute at @s summon piglin_brute run function summit.dev:entity/node/get_dimension
$data modify storage summit:root dev.nodeList[{id:$(id)}].dimension set from storage summit:temp dimension
tag @s add summit.node.dimension_set
data remove storage summit:temp dimension
