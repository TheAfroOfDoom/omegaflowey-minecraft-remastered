$execute as $(uuid) on passengers run data modify entity @s[type=interaction] data.claim set value "Not Claimed"
$execute as $(uuid) on passengers run data modify entity @s[type=interaction] data.completed set value false
$item replace entity $(uuid) container.0 with minecraft:poisonous_potato[minecraft:item_model="summit_technical:node",minecraft:custom_model_data={strings:["$(color)"]}]
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
$execute as $(uuid) on passengers if entity @s[type=interaction] run function summit.dev:entity/node/update_info with entity @s data
$execute as $(uuid) on passengers run attribute @s[type=armor_stand] minecraft:waypoint_transmit_range base set 60000000
$execute as $(uuid) on passengers if entity @s[type=armor_stand] run waypoint modify @s style set summit_technical:node
$execute as $(uuid) on passengers run data modify entity @s[type=text_display] see_through set value 1b
