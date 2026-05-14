data modify storage smithed:temp sticker_book.page_data.username set value "unknown"
loot spawn ~ ~ ~ loot summit:technical/player_head
data modify storage smithed:temp sticker_book.page_data.username set from entity @n[dx=0, type=minecraft:item] Item.components."minecraft:profile".name
kill @n[dx=0, type=minecraft:item]
