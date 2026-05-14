$tellraw . "$(confirm)"
scoreboard players reset * summit.battlegrounds.queued_booth
function summit.battlegrounds:kit_selection/unassign_kit/all
data modify storage summit.battlegrounds:database booths set value []
data modify storage summit.battlegrounds:database inventory set value []
data modify storage summit.battlegrounds:database kits set value []
data remove storage summit.battlegrounds:database session
data modify storage summit.battlegrounds:database queue set value []
