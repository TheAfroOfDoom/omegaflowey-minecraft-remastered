execute unless score @s summit.flag.pole_height matches 1.. run return 0
tag @s add summit_flag.changing_height
tag @s remove summit_flag.lowering
tag @s add summit_flag.raising
execute unless score #continue_clock summit.flag matches 1 run function summit:flag/change_height/clock
