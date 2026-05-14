title @s actionbar ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "You have left the battlegrounds.", color: "red"}]
function #summit.battlegrounds:api/player_leave
tag @s remove summit.battlegrounds.player
function summit.battlegrounds:player/action/clear_items
