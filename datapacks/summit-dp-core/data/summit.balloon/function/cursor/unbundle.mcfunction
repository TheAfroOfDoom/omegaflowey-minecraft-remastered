data modify storage summit:temp balloon.item set from storage summit:temp balloon.item.components."minecraft:bundle_contents"[0]
data modify storage summit:temp balloon.item.components."minecraft:bundle_contents" set value []
function summit.balloon:cursor/modify with storage summit:temp balloon.item
