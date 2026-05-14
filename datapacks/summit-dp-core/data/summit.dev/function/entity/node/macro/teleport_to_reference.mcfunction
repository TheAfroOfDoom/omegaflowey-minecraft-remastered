data modify storage summit:temp dev.returnPos.x set from entity @s Pos[0]
data modify storage summit:temp dev.returnPos.y set from entity @s Pos[1]
data modify storage summit:temp dev.returnPos.z set from entity @s Pos[2]
data modify storage summit:temp dev.returnPos.dim set from entity @s Dimension
$$(ref)
execute at @s run playsound minecraft:entity.enderman.teleport ui @s
function summit.dev:entity/node/macro/send_return_tp with storage summit:temp dev.returnPos
