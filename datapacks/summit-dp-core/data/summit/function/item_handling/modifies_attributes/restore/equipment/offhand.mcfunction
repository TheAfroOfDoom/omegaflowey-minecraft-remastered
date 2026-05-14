execute if items entity @s weapon.offhand * run return run data modify storage summit:temp player_item.cache.not_restored append from storage summit:temp player_items.cache.equipment.offhand
data modify storage summit:temp player_items.cache.equipment.offhand.slot set value "weapon.offhand"
function summit:item_handling/modifies_attributes/restore/equipment/restore with storage summit:temp player_items.cache.equipment.offhand
