data merge entity @s {Tags: ["summit.rope_destination", "summit.static"], data: {name: "Destination"}}
execute if data storage summit:temp target_pos run data modify entity @s Pos set from storage summit:temp target_pos
function gu:generate
