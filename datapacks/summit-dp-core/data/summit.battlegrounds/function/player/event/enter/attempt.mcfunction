data remove storage summit.battlegrounds:temp player_kit
$data modify storage summit.battlegrounds:temp player_kit set from storage summit.battlegrounds:database kits[{player_id:$(id)}]
scoreboard players set #block_player_enter summit.battlegrounds 0
function #summit.battlegrounds:api/player_enter_attempt
execute unless score #block_player_enter summit.battlegrounds matches 0 run effect give @s invisibility 1 0 true
execute unless score #block_player_enter summit.battlegrounds matches 0 run return 0
execute unless data storage summit.battlegrounds:database session if data storage summit.battlegrounds:temp player_kit run function summit.battlegrounds:player/event/enter/activate_session with storage summit.battlegrounds:temp player_kit
execute unless data storage summit.battlegrounds:database session unless data storage summit.battlegrounds:temp player_kit run title @s actionbar ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "Select a kit from a nearby booth to begin playing!", color: "yellow"}]
execute if data storage summit.battlegrounds:database session run function summit.battlegrounds:player/event/enter/success
