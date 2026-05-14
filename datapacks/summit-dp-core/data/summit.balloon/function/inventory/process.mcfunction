data modify storage summit:temp balloon.item set from block -30000000 0 0 Items[{Slot: 0b}]
data modify storage summit:temp balloon.item.slot set from storage summit:temp balloon.slot
scoreboard players set $count summit.temp 0
execute store result score $count summit.temp run data get storage summit:temp balloon.item.components."minecraft:bundle_contents"
execute store result score $old_count summit.temp run data get storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.count
execute if score $old_count summit.temp = $count summit.temp run return fail
data modify storage summit:temp balloon.last_item set from storage summit:temp balloon.item.components."minecraft:bundle_contents"[0]
execute unless data storage summit:temp balloon.last_item{components: {"minecraft:custom_data": {summit: {balloon: {}}}}} run return run function summit.balloon:inventory/remove/main
execute if score $count summit.temp matches 1 if data storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.bundle run return run function summit.balloon:inventory/unbundle
function summit.balloon:update
function summit.balloon:inventory/modify with storage summit:temp balloon.item
