data modify storage summit:temp balloon.temp set from storage summit:temp balloon.item.components."minecraft:bundle_contents"[0].components."minecraft:bundle_contents"
data remove storage summit:temp balloon.item.components."minecraft:bundle_contents"[0]
data modify storage summit:temp balloon.item.components."minecraft:bundle_contents" prepend from storage summit:temp balloon.temp[]
