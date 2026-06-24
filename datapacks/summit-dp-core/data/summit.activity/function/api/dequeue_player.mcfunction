execute if entity @s[tag=!summit.activity.in_queue] run return -1
data remove storage summit.activity:temp macro
function gu:generate
data modify storage summit.activity:temp macro.player_UUID set from storage gu:main out
tag @s remove summit.activity.in_queue
return run function summit.activity:zz/dequeue_player/uuid with storage summit.activity:temp macro
