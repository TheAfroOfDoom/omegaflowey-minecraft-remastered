execute as @a[tag=summit.activity.in_queue, scores={summit.activity.swap=1..}] run function summit.activity:zz/tick/nested_execute_0
scoreboard players reset @a[tag=summit.activity.in_queue, scores={summit.activity.swap=..-1}] summit.activity.swap
execute as @a[scores={summit.activity.re_queue=1..}] run function summit.activity:zz/tick/nested_execute_1
