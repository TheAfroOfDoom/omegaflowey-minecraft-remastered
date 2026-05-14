execute if items entity @s armor.legs * run return run data modify storage summit:temp player_item.cache.not_restored append from storage summit:temp player_items.cache.equipment.legs
data modify storage summit:temp player_items.cache.equipment.legs.slot set value "armor.legs"
function summit:item_handling/modifies_attributes/restore/equipment/restore with storage summit:temp player_items.cache.equipment.legs
