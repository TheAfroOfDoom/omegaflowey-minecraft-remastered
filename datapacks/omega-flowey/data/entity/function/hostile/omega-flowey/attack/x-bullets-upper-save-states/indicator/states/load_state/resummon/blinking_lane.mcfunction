# Store indicator uuid for blinking_lane to reference later
function gu:generate
data modify storage attack:x-bullets-upper-save-states indicator_uuid set from storage gu:main out

$execute positioned $(pos_x) $(pos_y) $(pos_z) rotated $(rotation_yaw) $(rotation_pitch) run function entity:hostile/omega-flowey/attack/x-bullets-upper/blinking_lane/summon/raw
execute as @e[tag=x-bullets-upper-blinking-lane-new] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/states/load_state/blinking_lane with storage attack:x-bullets-upper-save-states
