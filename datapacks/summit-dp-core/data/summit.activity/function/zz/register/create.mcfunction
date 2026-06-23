data modify entity @s data.summit_activity set from storage summit.activity:temp data
$data modify entity @s {} merge value {data: {name: "activity node", summit_activity: {queue: [], active_players: []}}, Tags: ["summit.activity.node", "summit.activity.$(id)"]}
function gu:generate
data modify entity @s data.UUID set from storage gu:main out
scoreboard players set @s summit.activity.status 0
scoreboard players set @s summit.activity.timer 0
$data modify storage summit.activity:names "$(id)" set value {booth: {text: "$(booth_name)", color: "$(booth_name_color)"}, activity: {text: "$(activity_name)", color: "$(activity_name_color)"}}
$tellraw @a[gamemode=creative] ["[", {text: "Activity API", color: "blue"}, "] ", {text: "Registering $(booth_id) $(activity_id)", color: "light_purple"}]
return 0
