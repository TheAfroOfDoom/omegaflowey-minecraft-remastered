data remove storage summit.activity:temp queue_copy[0]
$execute if entity $(player_UUID) run scoreboard players remove #players_needed summit.activity.misc 1
$execute if entity $(player_UUID) run data modify storage summit.activity:temp active_players append value {player_UUID: "$(player_UUID)"}
$execute unless entity $(player_UUID) run function summit.activity:zz/check_queue/as_marker/check_online/dequeue_offline {player_UUID: "$(player_UUID)"}
execute if score #players_needed summit.activity.misc matches 1.. if data storage summit.activity:temp queue_copy[0] run function summit.activity:zz/check_queue/as_marker/check_online with storage summit.activity:temp queue_copy[0]
