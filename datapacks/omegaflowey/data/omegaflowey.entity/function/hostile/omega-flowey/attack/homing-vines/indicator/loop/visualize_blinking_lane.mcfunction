# Remove zero-view-range data now that the blinking_lane's rotation has updated
$execute as $(blinking_lane_uuid) on passengers if entity @s[tag=aj.omegaflowey_homing_vine_blinking_lane.bone.root] run data modify entity @s view_range set value 1

# Play blinking sound once
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:attack.homing-vines.blinking hostile @s ~ ~ ~ 5 1 1' \
}
