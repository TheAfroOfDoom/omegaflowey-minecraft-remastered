data modify entity @s data.summit_activity merge from storage summit.activity:temp data
$data modify storage summit.activity:names "$(id)" set value {booth: "$(booth_name)", activity: "$(activity_name)"}
$tellraw @a[gamemode=creative] ["[", {text: "Activity API", color: "blue"}, "] ", {text: "Updating $(booth_id) $(activity_id)", color: "light_purple"}]
return 1
