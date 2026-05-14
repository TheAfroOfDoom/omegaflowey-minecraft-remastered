advancement revoke @s only summit.balloon:cursor
item replace block -30000000 0 0 container.0 from entity @s player.cursor
data modify storage summit:temp balloon.item set from block -30000000 0 0 Items[{Slot: 0b}]
execute store result score $count summit.temp run data get storage summit:temp balloon.item.components."minecraft:bundle_contents"
execute store result score $old_count summit.temp run data get storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.count
execute if score $old_count summit.temp = $count summit.temp run return fail
data modify storage summit:temp balloon.last_item set from storage summit:temp balloon.item.components."minecraft:bundle_contents"[0]
execute unless data storage summit:temp balloon.last_item{components: {"minecraft:custom_data": {summit: {balloon: {}}}}} run return run function summit.balloon:cursor/remove/main
execute if score $count summit.temp matches 1 if data storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.bundle run return run function summit.balloon:cursor/unbundle
execute if score $count summit.temp matches 1 unless data storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.bundle run function summit.balloon:cursor/bundle
execute if data storage summit:temp balloon.last_item.components."minecraft:bundle_contents" run function summit.balloon:cursor/flatten
function summit.balloon:update
function summit.balloon:cursor/modify with storage summit:temp balloon.item
