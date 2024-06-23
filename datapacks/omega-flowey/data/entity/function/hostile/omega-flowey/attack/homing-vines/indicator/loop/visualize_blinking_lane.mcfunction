# Remove zero-view-range data now that the blinking_lane's rotation has updated
$execute as $(blinking_lane_uuid) run data modify entity @s view_range set value 1

# Play blinking sound once
playsound omega-flowey:attack.homing-vines.blinking hostile @a ~ ~ ~ 3 1 1
