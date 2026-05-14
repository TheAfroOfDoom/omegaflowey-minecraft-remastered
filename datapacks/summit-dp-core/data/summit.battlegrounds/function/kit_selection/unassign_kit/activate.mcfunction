tellraw @s ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "Your kit has been unselected, please select a new one.", color: "red"}]
$data remove storage summit.battlegrounds:database kits[{player_id:$(id)}]
scoreboard players reset @s summit.battlegrounds.kit_expiration
