tag @s add summit.item_processed
execute on origin if entity @s[gamemode=creative] run return 1
execute if items entity @s contents *[minecraft:custom_data~{summit: {droppable: {kill: true}}}] run return run kill @s
execute if items entity @s contents *[minecraft:custom_data~{summit: {droppable: {callback: true}}}] run return run function #summit.items:droppable/callback
execute if items entity @s contents *[minecraft:custom_data~{summit: {droppable: {ignore: true}}}] run return 1
execute on origin run data modify storage summit:item UUID set from entity @s UUID
data modify entity @s Owner set from storage summit:item UUID
data modify entity @s PickupDelay set value 0s
execute on origin at @s run tp @s ~ ~ ~
