data remove storage summit.climbing:master block_id
loot replace entity @s weapon.mainhand mine ~ ~ ~ minecraft:netherite_pickaxe[enchantments={silk_touch: 1}]
data modify storage summit.climbing:master block_id set from entity @s equipment.mainhand.id
function summit.climbing:util/clean_kill
