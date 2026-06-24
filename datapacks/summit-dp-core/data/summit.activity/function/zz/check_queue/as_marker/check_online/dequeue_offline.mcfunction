$data modify storage summit.activity:player "$(player_UUID)".past set from storage summit.activity:player "$(player_UUID)".queued
$data modify storage summit.activity:player "$(player_UUID)".past.type set value "queued"
$data remove storage summit.activity:player "$(player_UUID)".queued
$execute as @e[tag=summit.activity.node,type=marker] run data remove entity @s data.summit_activity.queue[{player_UUID:"$(player_UUID)"}]
