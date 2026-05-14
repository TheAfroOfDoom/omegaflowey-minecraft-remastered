$execute unless data storage summit:player_items cache."$(UUID)" run data modify storage summit:player_items cache."$(UUID)" set value {inventory:[],equipment:{}}
$data modify storage summit:player_items cache."$(UUID)".inventory append from storage summit:temp player_items.Inventory[{components:{"minecraft:custom_data":{summit:{modifies:{}}}}}]
$execute if data storage summit:temp player_items.equipment.head.components."minecraft:custom_data".summit.modifies run data modify storage summit:player_items cache."$(UUID)".equipment.head set from storage summit:temp player_items.equipment.head
$execute if data storage summit:temp player_items.equipment.chest.components."minecraft:custom_data".summit.modifies run data modify storage summit:player_items cache."$(UUID)".equipment.chest set from storage summit:temp player_items.equipment.chest
$execute if data storage summit:temp player_items.equipment.legs.components."minecraft:custom_data".summit.modifies run data modify storage summit:player_items cache."$(UUID)".equipment.legs set from storage summit:temp player_items.equipment.legs
$execute if data storage summit:temp player_items.equipment.feet.components."minecraft:custom_data".summit.modifies run data modify storage summit:player_items cache."$(UUID)".equipment.feet set from storage summit:temp player_items.equipment.feet
$execute if data storage summit:temp player_items.equipment.offhand.components."minecraft:custom_data".summit.modifies run data modify storage summit:player_items cache."$(UUID)".equipment.offhand set from storage summit:temp player_items.equipment.offhand
$data modify storage summit:player_items cache."$(UUID)".equipment.body set from storage summit:temp player_items.equipment.body
item replace entity @s armor.body with minecraft:air
item replace entity @s saddle with minecraft:air
clear @s *[minecraft:custom_data~{summit: {modifies: {}}}]
