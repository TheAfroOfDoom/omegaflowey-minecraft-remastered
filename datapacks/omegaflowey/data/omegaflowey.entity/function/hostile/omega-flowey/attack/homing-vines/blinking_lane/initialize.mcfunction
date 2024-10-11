function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize

data modify entity @s CustomName set value '"Homing-Vines Blinking Lane"'

# Store blinking_lane uuid to parent indicator
function gu:generate
$execute as $(indicator_uuid) run data modify entity @s data.blinking_lane_uuid set from storage gu:main out

# Add tags
tag @s add homing-vines
tag @s add homing-vines-blinking-lane
