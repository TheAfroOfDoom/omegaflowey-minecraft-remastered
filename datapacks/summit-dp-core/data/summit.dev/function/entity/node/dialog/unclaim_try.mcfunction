tag @s add unclaimingNode
$execute as $(owner) if entity @s[tag=unclaimingNode] run return run function summit.dev:entity/node/dialog/unclaim_confirm {id:$(id),color:$(color)}
$execute as $(claim) if entity @s[tag=unclaimingNode] run return run function summit.dev:entity/node/dialog/unclaim_confirm {id:$(id),color:$(color)}
tellraw @s {color: "red", text: "[Error] Nodes can only be unclaimed by their creator or claimer."}
playsound minecraft:entity.villager.no ui @s
tag @s remove unclaimingNode
