data remove storage summit.activity:temp active_players[0]
$data modify storage summit.activity:player "$(player_UUID)".past.booth_id set from entity @s data.summit_activity.booth_id
$data modify storage summit.activity:player "$(player_UUID)".past.activity_id set from entity @s data.summit_activity.activity_id
$data modify storage summit.activity:player "$(player_UUID)".past.id set from entity @s data.summit_activity.id
$data modify storage summit.activity:player "$(player_UUID)".past.player_UUID set value "$(player_UUID)"
$data modify storage summit.activity:player "$(player_UUID)".past.type set value "active"
execute if data storage summit.activity:temp active_players[0] run function summit.activity:zz/sec/remove_players with storage summit.activity:temp active_players[0]
