execute if entity @s[tag=summit.activity.active] run return -1
$data modify storage summit.activity:temp macro set value {booth_id:"$(booth_id)",activity_id:"$(activity_id)",id:"$(booth_id).$(activity_id)"}
function gu:generate
data modify storage summit.activity:temp macro.player_UUID set from storage gu:main out
execute if entity @s[tag=summit.activity.in_queue] run return run function summit.activity:zz/enqueue_player/already_queued with storage summit.activity:temp macro
tag @s add summit.activity.in_queue
return run function summit.activity:zz/enqueue_player with storage summit.activity:temp macro
