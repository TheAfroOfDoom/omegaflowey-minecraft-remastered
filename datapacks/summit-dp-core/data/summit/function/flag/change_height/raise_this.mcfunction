tp @s ~ ~1 ~
scoreboard players add @s summit.flag.height 1
execute if score @s summit.flag.height < @s summit.flag.pole_height run scoreboard players set #continue_clock summit.flag 1
execute unless score @s summit.flag.height < @s summit.flag.pole_height run function summit:flag/change_height/stop_this
