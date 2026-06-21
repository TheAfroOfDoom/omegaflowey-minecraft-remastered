$execute if data storage summit.activity:player {$(player_UUID): {queued: {booth_id: "$(booth_id)", activity_id: "$(activity_id)"}}} run return -2
$data modify storage summit.activity:player "$(player_UUID)".swap set from storage summit.activity:temp macro
$data modify storage summit.activity:temp macro.current_id set from storage summit.activity:player "$(player_UUID)".queued.id
function summit.activity:zz/enqueue_player/already_queued/nested_macro_0 with storage summit.activity:temp macro
scoreboard players enable @s summit.activity.swap
function summit.activity:zz/enqueue_player/already_queued/nested_macro_1 with storage summit.activity:temp macro
