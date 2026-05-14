tag @s add completingNode
$execute as $(owner) if entity @s[tag=completingNode] run return run function summit.dev:entity/node/dialog/incomplete_confirm {id:$(id),color:$(color)}
$execute as $(claim) if entity @s[tag=completingNode] run return run function summit.dev:entity/node/dialog/incomplete_confirm {id:$(id),color:$(color)}
tellraw @s {color: "red", text: "[Error] Node completion status can only be modified by their creator or claimer."}
playsound minecraft:entity.villager.no ui @s
tag @s remove completingNode
