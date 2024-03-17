# Store blinking_lane uuid to parent indicator
function gu:generate
$execute as $(indicator_uuid) run data modify entity @s data.blinking_lane_uuid set from storage gu:main out

# Play blinking sound (stop any that are already playing)
stopsound @a hostile omega-flowey:attack.homing-vines.blinking
playsound omega-flowey:attack.homing-vines.blinking hostile @a ~ ~ ~ 3 1 1

tag @s remove homing-vines-blinking-lane-new
