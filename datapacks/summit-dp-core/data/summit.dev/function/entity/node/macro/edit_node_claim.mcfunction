$loot replace entity $(uuid) container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:player_head",functions:[{function:"minecraft:fill_player_head",entity:"this"}]}]}],functions:[]}
$execute as $(uuid) on passengers run data modify entity @s[type=interaction] data.claim set from entity $(uuid) item.components.minecraft:profile.name
$item replace entity $(uuid) container.0 with minecraft:poisonous_potato[minecraft:item_model="summit_technical:node_claimed",minecraft:custom_model_data={strings:["$(color)"]}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
$execute as $(uuid) on passengers if entity @s[type=interaction] run function summit.dev:entity/node/update_info with entity @s data
$execute as $(uuid) on passengers if entity @s[type=armor_stand] run waypoint modify @s style set summit_technical:node_claimed
