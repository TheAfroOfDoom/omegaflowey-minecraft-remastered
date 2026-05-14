execute if score @s summit.flag.height < @s summit.flag.pole_height if entity @s[type=item_display, tag=summit_flag.raising] run function summit:flag/change_height/raise_this
execute if score @s summit.flag.height matches 1.. if entity @s[type=item_display, tag=summit_flag.lowering] run function summit:flag/change_height/lower_this
