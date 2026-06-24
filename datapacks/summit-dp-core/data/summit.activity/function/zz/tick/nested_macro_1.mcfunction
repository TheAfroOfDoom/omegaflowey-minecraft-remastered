$data remove storage summit.activity:player "$(player_UUID)".queued
$execute as @e[tag=summit.activity.node,type=marker] run data remove entity @s data.summit_activity.queue[{player_UUID:"$(player_UUID)"}]
$function summit.activity:zz/tick/nested_macro_0 with storage summit.activity:player "$(player_UUID)".swap
