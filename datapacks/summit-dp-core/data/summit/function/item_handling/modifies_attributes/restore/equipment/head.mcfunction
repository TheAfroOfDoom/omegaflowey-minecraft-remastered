execute if items entity @s armor.head * run return run data modify storage summit:temp player_item.cache.not_restored append from storage summit:temp player_items.cache.equipment.head
data modify storage summit:temp player_items.cache.equipment.head.slot set value "armor.head"
function summit:item_handling/modifies_attributes/restore/equipment/restore with storage summit:temp player_items.cache.equipment.head
