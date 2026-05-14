data modify storage summit:temp player_items.player set from entity @s
function summit:item_handling/modifies_attributes/restore/load_cache with storage summit:temp player_items.player
data modify storage summit:temp player_items.cache.not_restored set value []
function summit:item_handling/modifies_attributes/restore/restore_next_item with storage summit:temp player_items.cache.inventory[-1]
execute if data storage summit:temp player_items.cache.equipment.head run function summit:item_handling/modifies_attributes/restore/equipment/head
execute if data storage summit:temp player_items.cache.equipment.chest run function summit:item_handling/modifies_attributes/restore/equipment/chest
execute if data storage summit:temp player_items.cache.equipment.legs run function summit:item_handling/modifies_attributes/restore/equipment/legs
execute if data storage summit:temp player_items.cache.equipment.feet run function summit:item_handling/modifies_attributes/restore/equipment/feet
execute if data storage summit:temp player_items.cache.equipment.offhand run function summit:item_handling/modifies_attributes/restore/equipment/offhand
data remove storage summit:temp player_items
