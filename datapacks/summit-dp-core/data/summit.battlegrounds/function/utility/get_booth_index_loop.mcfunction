data modify storage summit.battlegrounds:temp compare_booth set from storage summit.battlegrounds:temp compare_booths[0]
execute store result score #no_match summit.battlegrounds run data modify storage summit.battlegrounds:temp compare_booth.booth_id set from storage summit.battlegrounds:temp target_booth.booth_id
execute if score #no_match summit.battlegrounds matches 0 run return run scoreboard players get #gbi_index summit.battlegrounds
data remove storage summit.battlegrounds:temp compare_booths[0]
scoreboard players add #gbi_index summit.battlegrounds 1
execute if data storage summit.battlegrounds:temp compare_booths[0] run return run function summit.battlegrounds:utility/get_booth_index_loop
