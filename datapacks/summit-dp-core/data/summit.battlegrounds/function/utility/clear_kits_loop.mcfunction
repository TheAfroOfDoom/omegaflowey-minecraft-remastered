execute store result score #no_match summit.battlegrounds run data modify storage summit.battlegrounds:temp excluded_booth set from storage summit.battlegrounds:temp compare_kits[0].booth_id
execute if score #no_match summit.battlegrounds matches 0 run data modify storage summit.battlegrounds:temp kept_kits append from storage summit.battlegrounds:temp compare_kits[0]
data remove storage summit.battlegrounds:temp compare_kits[0]
execute if data storage summit.battlegrounds:temp compare_kits[0] run return run function summit.battlegrounds:utility/clear_kits_loop
