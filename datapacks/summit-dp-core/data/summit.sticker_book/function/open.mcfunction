scoreboard players reset @s summit.use_book
execute unless predicate summit.sticker_book:holding_sticker_book run return fail
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
scoreboard players enable @s summit.sticker_book_actions
execute unless score @s summit.sticker_book_page matches 1.. run scoreboard players set @s summit.sticker_book_page 1
function summit.sticker_book:limit_page_number
execute store result storage summit:temp sticker_book.current_page int 1 run scoreboard players get @s summit.sticker_book_page
function summit.sticker_book:open_page with storage summit:temp sticker_book
