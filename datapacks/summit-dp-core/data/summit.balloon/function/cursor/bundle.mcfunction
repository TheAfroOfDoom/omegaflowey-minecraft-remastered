data modify storage summit:temp balloon.item.components."minecraft:bundle_contents" append from storage summit:temp balloon.item
data remove storage summit:temp balloon.item.components."minecraft:bundle_contents"[-1].components."minecraft:bundle_contents"
data modify storage summit:temp balloon.item.components."minecraft:custom_data".summit.balloon.bundle set value true
data modify storage summit:temp balloon.item.components."minecraft:item_name" set value {translate: "item.smithed.balloon_bundle"}
execute store result score $count summit.temp run data get storage summit:temp balloon.item.components."minecraft:bundle_contents"
