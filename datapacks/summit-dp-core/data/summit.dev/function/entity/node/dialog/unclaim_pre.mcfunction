$data modify storage summit:temp dev.editNode.claim set value "$(claim)"
$execute unless data storage summit:temp {dev:{editNode:{claim:"Not Claimed"}}} run return run function summit.dev:entity/node/dialog/unclaim_try {owner:"$(owner)",claim:"$(claim)",id:"$(id)",color:"$(color)"}
tellraw @s {color: "red", text: "[Error] This node is not claimed."}
playsound minecraft:entity.villager.no ui @s
