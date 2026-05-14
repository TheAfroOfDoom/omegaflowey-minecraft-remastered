data remove storage summit.battlegrounds:temp target_booth
$data modify storage summit.battlegrounds:temp target_booth set from storage summit.battlegrounds:database booths[{booth_id:$(booth_id)}]
data modify storage summit.battlegrounds:temp compatibility set from storage summit.battlegrounds:database session.compatibility
execute store result score #no_match summit.battlegrounds run data modify storage summit.battlegrounds:temp compatibility set from storage summit.battlegrounds:temp target_booth.compatibility
execute unless data storage summit.battlegrounds:database session run scoreboard players set #no_match summit.battlegrounds 0
execute if score #no_match summit.battlegrounds matches 0 run function summit.battlegrounds:kit_selection/assign_kit/success with storage summit.battlegrounds:macro assign_kit
$execute if score #no_match summit.battlegrounds matches 1 run function summit.battlegrounds:kit_selection/assign_kit/fail {booth_id:"$(booth_id)"}
execute if score #no_match summit.battlegrounds matches 0 run scoreboard players set #no_match summit.battlegrounds -1
return run scoreboard players get #no_match summit.battlegrounds
