execute if score @s summit.activity.status matches 1 run return -11
execute if score @s summit.activity.status matches ..-1 run return -12
execute store result score #players_queued summit.activity.misc if data entity @s data.summit_activity.queue[]
$execute unless score #players_queued summit.activity.misc matches $(player_count).. run return -13
$scoreboard players set #players_needed summit.activity.misc $(player_count)
data modify storage summit.activity:temp queue_copy set from entity @s data.summit_activity.queue
data modify storage summit.activity:temp active_players set value []
function summit.activity:zz/check_queue/as_marker/check_online with storage summit.activity:temp queue_copy[0]
execute if score #players_needed summit.activity.misc matches 1.. run return -14
data modify entity @s data.summit_activity.active_players set from storage summit.activity:temp active_players
$data modify storage summit.activity:temp active_players[] merge value {id: $(id)}
function summit.activity:zz/check_queue/as_marker/add_player with storage summit.activity:temp active_players[0]
scoreboard players set @s summit.activity.status 1
$function $(start_function)
