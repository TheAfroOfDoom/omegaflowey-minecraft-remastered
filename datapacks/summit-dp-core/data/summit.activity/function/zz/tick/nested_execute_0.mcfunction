scoreboard players reset @s summit.activity.swap
function gu:generate
data modify storage summit.activity:temp macro set value {}
data modify storage summit.activity:temp macro.player_UUID set from storage gu:main out
function summit.activity:zz/tick/nested_macro_1 with storage summit.activity:temp macro
