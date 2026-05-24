function reef:zzzinternals/screen/display/common
tag @s add reef.element.animated_graphic
data modify entity @s item.id set value "minecraft:amethyst_shard"
data modify entity @s item.components."minecraft:item_model" set from storage reef.zzzinternals:tmp root.element.data.model
data modify entity @s item.components."minecraft:custom_model_data" set value {floats: [0]}
scoreboard players set @s reef.zzzinternals.element.animated_graphic.current_frame 0
execute store result score @s reef.zzzinternals.element.animated_graphic.frames run data get storage reef.zzzinternals:tmp root.element.data.frames 1
