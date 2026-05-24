function reef:zzzinternals/screen/display/common
tag @s add reef.element.graphic
tag @s add summit.static
data modify entity @s item.id set value "minecraft:amethyst_shard"
data modify entity @s item.components."minecraft:item_model" set from storage reef.zzzinternals:tmp root.element.data.model
