schedule function summit.activity:zz/sec 1s
execute as @e[tag=summit.activity.node, scores={summit.activity.status=1}, type=marker] run function summit.activity:zz/sec/nested_macro_0 with entity @s data.summit_activity
