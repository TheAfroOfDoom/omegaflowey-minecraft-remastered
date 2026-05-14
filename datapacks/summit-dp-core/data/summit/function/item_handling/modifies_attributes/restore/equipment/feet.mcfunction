execute if items entity @s armor.feet * run return run data modify storage summit:temp player_item.cache.not_restored append from storage summit:temp player_items.cache.equipment.feet
data modify storage summit:temp player_items.cache.equipment.feet.slot set value "armor.feet"
function summit:item_handling/modifies_attributes/restore/equipment/restore with storage summit:temp player_items.cache.equipment.feet
