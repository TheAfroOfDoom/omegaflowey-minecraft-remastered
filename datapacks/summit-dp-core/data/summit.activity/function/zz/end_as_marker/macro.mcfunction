execute if score @s summit.activity.status matches 0 run return -1
scoreboard players set @s summit.activity.status 0
scoreboard players set @s summit.activity.timer 0
$tag @a[tag=summit.activity.active.$(id)] remove summit.activity.active
$tag @a[tag=summit.activity.active.$(id)] remove summit.activity.active.$(id)
data modify entity @s data.summit_activity.active_players set value []
$execute store result score #return summit.activity.misc run function summit.activity:zz/check_queue {id: $(id)}
$function #summit.activity:api/post_queue_check/$(id)
return run scoreboard players get #return summit.activity.misc
