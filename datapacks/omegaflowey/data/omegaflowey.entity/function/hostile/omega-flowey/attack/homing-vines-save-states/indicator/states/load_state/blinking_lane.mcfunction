# Store blinking_lane uuid to parent indicator
function gu:generate
$execute as $(indicator_uuid) run data modify entity @s data.blinking_lane_uuid set from storage gu:main out

data modify entity @s CustomName set value '"Homing-Vines-Save-States Blinking Lane"'

tag @s add homing-vines-save-states.resummoned
