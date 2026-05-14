tag @s add deletingNode
$execute as $(name) if entity @s[tag=deletingNode] run return run function summit.dev:entity/node/dialog/delete_confirm {id:$(id)}
tellraw @s {color: "red", text: "[Error] Nodes can only be deleted by their creator."}
playsound minecraft:entity.villager.no ui @s
tag @s remove deletingNode
