data modify storage summit.activity:temp active_players set from entity @s data.summit_activity.active_players
execute store result score #exists summit.activity.misc run function summit.activity:zz/sec/check_online with storage summit.activity:temp active_players[0]
execute if score #exists summit.activity.misc matches 1 run return run scoreboard players set @s summit.activity.timer 0
scoreboard players add @s summit.activity.timer 1
execute unless score @s summit.activity.timer matches 10 run return 0
$function $(abort_function)
data modify storage summit.activity:temp active_players set from entity @s data.summit_activity.active_players
function summit.activity:zz/sec/remove_players with storage summit.activity:temp active_players[0]
function summit.activity:zz/end_as_marker
