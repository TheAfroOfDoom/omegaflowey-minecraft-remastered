data remove storage summit.activity:temp active_players[0]
$execute if entity $(player_UUID) run return 1
execute if data storage summit.activity:temp active_players[0] run return run function summit.activity:zz/sec/check_online with storage summit.activity:temp active_players[0]
return 0
