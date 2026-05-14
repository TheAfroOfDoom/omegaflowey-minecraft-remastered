scoreboard players set #continue_clock summit.flag 0
execute as @e[type=item_display, tag=summit_flag.changing_height] at @s run function summit:flag/change_height/move_this
execute if score #continue_clock summit.flag matches 1 run schedule function summit:flag/change_height/clock 10
