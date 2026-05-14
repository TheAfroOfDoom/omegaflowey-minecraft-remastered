$execute as @n[type=item_display,scores={summit.dev.nodeID=$(id)}] at @s run function summit.dev:entity/node/delete {id:$(id)}
tag @s remove deletingNode
