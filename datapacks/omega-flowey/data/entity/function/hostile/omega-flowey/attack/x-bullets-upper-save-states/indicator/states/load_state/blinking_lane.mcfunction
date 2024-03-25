# Store blinking_lane uuid to parent indicator
function gu:generate
$execute as $(indicator_uuid) run data modify entity @s data.blinking_lane_uuid set from storage gu:main out

tag @s remove x-bullets-upper-blinking-lane-new
