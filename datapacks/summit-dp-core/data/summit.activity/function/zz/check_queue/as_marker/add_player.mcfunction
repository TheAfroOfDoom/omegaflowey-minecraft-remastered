data remove storage summit.activity:temp active_players[0]
$data remove storage summit.activity:player "$(player_UUID)".queued
$execute as @e[tag=summit.activity.node,type=marker] run data remove entity @s data.summit_activity.queue[{player_UUID:"$(player_UUID)"}]
$tag $(player_UUID) remove summit.activity.in_queue
$tag $(player_UUID) add summit.activity.active
$tag $(player_UUID) add summit.activity.active.$(id)
execute if data storage summit.activity:temp active_players[0] run function summit.activity:zz/check_queue/as_marker/add_player with storage summit.activity:temp active_players[0]
