function summit.battlegrounds:utility/get_head
data remove storage summit.battlegrounds:macro assign_kit
$data modify storage summit.battlegrounds:macro assign_kit set value {booth_id:"$(booth_id)", kit_id:"$(kit_id)", kit_function:"$(kit_function)"}
data modify storage summit.battlegrounds:macro assign_kit.player_name set from storage summit.battlegrounds:temp profile.name
data modify storage summit.battlegrounds:macro assign_kit.player_id set from storage summit.battlegrounds:temp profile.id
return run function summit.battlegrounds:kit_selection/assign_kit/attempt with storage summit.battlegrounds:macro assign_kit
