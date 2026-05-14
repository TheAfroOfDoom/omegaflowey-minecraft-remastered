execute if items entity @s armor.chest * run return run data modify storage summit:temp player_item.cache.not_restored append from storage summit:temp player_items.cache.equipment.chest
data modify storage summit:temp player_items.cache.equipment.chest.slot set value "armor.chest"
function summit:item_handling/modifies_attributes/restore/equipment/restore with storage summit:temp player_items.cache.equipment.chest
