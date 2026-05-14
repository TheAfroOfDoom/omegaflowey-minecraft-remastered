tellraw @s ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "You have selected this kit!", color: "green"}]
$data remove storage summit.battlegrounds:database kits[{player_id:$(player_id)}]
data modify storage summit.battlegrounds:database kits append from storage summit.battlegrounds:macro assign_kit
scoreboard players set @s summit.battlegrounds.kit_expiration 180
