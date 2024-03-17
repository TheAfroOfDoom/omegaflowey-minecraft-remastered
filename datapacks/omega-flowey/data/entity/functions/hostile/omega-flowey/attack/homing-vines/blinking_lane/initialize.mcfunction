# Copy yaw from parent indicator
$teleport @s ~ ~ ~ $(yaw) $(pitch)

# Copy group id from parent indicator
function entity:group/copy with storage group

# Remove tags
tag @s remove homing-vines-blinking-lane-new
