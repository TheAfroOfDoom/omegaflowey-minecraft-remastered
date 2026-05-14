$data modify storage summit:temp dev.editNode.claim set value "$(claim)"
$execute if data storage summit:temp {dev:{editNode:{claim:"Not Claimed"}}} run return run function summit.dev:entity/node/dialog/claim_confirm {id:$(id),color:$(color)}
tellraw @s {color: "red", text: "[Error] This node is already claimed."}
playsound minecraft:entity.villager.no ui @s
