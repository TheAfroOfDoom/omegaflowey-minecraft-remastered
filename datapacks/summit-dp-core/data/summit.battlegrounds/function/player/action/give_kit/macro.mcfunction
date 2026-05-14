data remove storage summit.battlegrounds:temp player_kit
$data modify storage summit.battlegrounds:temp player_kit set from storage summit.battlegrounds:database kits[{player_id:$(id)}]
execute if data storage summit.battlegrounds:temp player_kit run function summit.battlegrounds:player/action/give_kit/final with storage summit.battlegrounds:temp player_kit
execute unless data storage summit.battlegrounds:temp player_kit run function summit.battlegrounds:player/action/give_kit/final with storage summit.battlegrounds:database session
