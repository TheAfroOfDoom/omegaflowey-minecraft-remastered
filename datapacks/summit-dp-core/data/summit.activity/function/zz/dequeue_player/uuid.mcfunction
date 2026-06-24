$data modify storage summit.activity:temp macro.id set from storage summit.activity:player "$(player_UUID)".queued.id
$data remove storage summit.activity:player "$(player_UUID)".queued
$execute as @e[tag=summit.activity.node,type=marker] run data remove entity @s data.summit_activity.queue[{player_UUID:"$(player_UUID)"}]
return run function summit.activity:zz/dequeue_player/uuid/nested_macro_0 with storage summit.activity:temp macro
