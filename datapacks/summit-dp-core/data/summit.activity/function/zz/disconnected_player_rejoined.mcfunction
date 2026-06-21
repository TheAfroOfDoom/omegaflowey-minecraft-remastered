execute if entity @s[tag=!summit.activity.in_queue, tag=!summit.activity.active] run return fail
data modify storage summit.activity:temp macro set value {}
function gu:generate
data modify storage summit.activity:temp macro.player_UUID set from storage gu:main out
function summit.activity:zz/disconnected_player_rejoined/nested_macro_1 with storage summit.activity:temp macro
