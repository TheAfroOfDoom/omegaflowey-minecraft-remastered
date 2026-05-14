advancement revoke @s only summit.balloon:inventory
execute if items entity @s hotbar.* minecraft:bundle[minecraft:custom_data~{summit: {balloon: {}}}] run function summit.balloon:inventory/search/hotbar/main
execute if items entity @s inventory.* minecraft:bundle[minecraft:custom_data~{summit: {balloon: {}}}] run function summit.balloon:inventory/search/inventory/main
execute if items entity @s player.crafting.* minecraft:bundle[minecraft:custom_data~{summit: {balloon: {}}}] run function summit.balloon:inventory/search/crafting/main
execute if items entity @s enderchest.* minecraft:bundle[minecraft:custom_data~{summit: {balloon: {}}}] run function summit.balloon:inventory/search/inventory/main
execute if items entity @s weapon.offhand minecraft:bundle[minecraft:custom_data~{summit: {balloon: {}}}] run function summit.balloon:inventory/search/offhand/main
