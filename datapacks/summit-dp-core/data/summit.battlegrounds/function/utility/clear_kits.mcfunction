$data modify storage summit.battlegrounds:temp excluded_booth set value $(booth_id)
data remove storage summit.battlegrounds:temp compare_kits
data modify storage summit.battlegrounds:temp compare_kits set from storage summit.battlegrounds:database kits
data modify storage summit.battlegrounds:temp kept_kits set value []
function summit.battlegrounds:utility/clear_kits_loop
data modify storage summit.battlegrounds:database kits set from storage summit.battlegrounds:temp kept_kits
