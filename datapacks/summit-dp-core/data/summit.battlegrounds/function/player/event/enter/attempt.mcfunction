data remove storage summit.battlegrounds:temp player_kit
$data modify storage summit.battlegrounds:temp player_kit set from storage summit.battlegrounds:database kits[{player_id:$(id)}]
execute unless data storage summit.battlegrounds:database session if data storage summit.battlegrounds:temp player_kit run function summit.battlegrounds:player/event/enter/activate_session with storage summit.battlegrounds:temp player_kit
execute unless data storage summit.battlegrounds:database session unless data storage summit.battlegrounds:temp player_kit run title @s actionbar ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "Select a kit from a nearby booth to begin playing!", color: "yellow"}]
execute if data storage summit.battlegrounds:database session run function summit.battlegrounds:player/event/enter/success
