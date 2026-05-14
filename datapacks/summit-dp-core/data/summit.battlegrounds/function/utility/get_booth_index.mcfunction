data remove storage summit.battlegrounds:temp target_booth
$data modify storage summit.battlegrounds:temp target_booth set from storage summit.battlegrounds:database booths[{booth_id:$(booth_id)}]
data modify storage summit.battlegrounds:temp compare_booths set from storage summit.battlegrounds:database booths
scoreboard players set #gbi_index summit.battlegrounds 0
return run function summit.battlegrounds:utility/get_booth_index_loop
