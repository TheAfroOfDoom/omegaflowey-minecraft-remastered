data modify storage summit:temp balloon.last_item.slot set from storage summit:temp balloon.item.slot
execute if items entity @s player.cursor * run return run function summit.balloon:inventory/remove/merge with storage summit:temp balloon.last_item
execute unless data storage summit:temp balloon.last_item.count run data modify storage summit:temp balloon.last_item.count set value 1
execute unless data storage summit:temp balloon.last_item.components run data modify storage summit:temp balloon.last_item.components set value {}
function summit.balloon:inventory/remove/macro with storage summit:temp balloon.last_item
