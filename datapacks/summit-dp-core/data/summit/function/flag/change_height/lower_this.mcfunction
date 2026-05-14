tp @s ~ ~-1 ~
scoreboard players remove @s summit.flag.height 1
execute if score @s summit.flag.height matches 1.. run scoreboard players set #continue_clock summit.flag 1
execute unless score @s summit.flag.height matches 1.. run function summit:flag/change_height/stop_this
