$data remove storage summit.activity:player "$(player_UUID)".past
$scoreboard players reset $(player_UUID) summit.activity.re_queue
$data modify storage summit.activity:player "$(player_UUID)".queued set value {booth_id: "$(booth_id)", activity_id: "$(activity_id)", id: "$(booth_id).$(activity_id)", player_UUID: "$(player_UUID)"}
$data modify entity @n[tag=summit.activity.$(booth_id).$(activity_id)] data.summit_activity.queue append value {player_UUID:"$(player_UUID)"}
$execute as $(player_UUID) run tellraw @s ["[", {text: "Summit Activities", color: "blue"}, "] ", "You are now queued for ", {storage: "summit.activity:names", nbt: "'$(booth_id).$(activity_id)'.activity", interpret: true}, " from ", {storage: "summit.activity:names", nbt: "'$(booth_id).$(activity_id)'.booth", interpret: true}, "."]
$execute store result score #return summit.activity.misc run function summit.activity:zz/check_queue {id: $(id)}
$function #summit.activity:api/post_queue_check/$(id)
return run scoreboard players get #return summit.activity.misc
