execute unless data storage summit:temp balloon.last_item.count run data modify storage summit:temp balloon.last_item.count set value 1
execute unless data storage summit:temp balloon.last_item.components run data modify storage summit:temp balloon.last_item.components set value {}
item modify entity @s player.cursor summit.balloon:remove_non_balloons
function summit.balloon:cursor/remove/macro with storage summit:temp balloon.last_item
