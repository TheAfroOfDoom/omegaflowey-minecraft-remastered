data modify entity @s data.summit_activity merge from storage summit.activity:temp data
$data modify storage summit.activity:names "$(id)" set value {booth: {text: "$(booth_name)", color: "$(booth_name_color)"}, activity: {text: "$(activity_name)", color: "$(activity_name_color)"}}
$tellraw @a[gamemode=creative] ["[", {text: "Activity API", color: "blue"}, "] ", {text: "Updating $(booth_id) $(activity_id)", color: "light_purple"}]
$execute store result score #return summit.activity.misc run function summit.activity:zz/check_queue {id: $(id)}
$function #summit.activity:api/post_queue_check/$(id)
return run scoreboard players get #return summit.activity.misc
