tag @s remove editingNode
tag @s remove deletingNode
tellraw @s {color: "red", text: "[Error] Only the creator of this node may perform this action."}
playsound minecraft:entity.villager.no ui @s
