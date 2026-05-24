tag @s add reef.entity
tag @s add reef.element
tag @s add reef.element.new
tag @s add reef.element.transition
data modify entity @s item.id set value "minecraft:amethyst_shard"
data modify entity @s item.components."minecraft:item_model" set value "air"
data modify entity @s item.components."minecraft:custom_model_data" set value {floats: [0]}
rotate @s ~ ~
tp @s ^ ^ ^0.1
tag @s add reef.element.transition.finished
