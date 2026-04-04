$data modify storage omegaflowey:attack.x-bullets-upper-save-states entity_specific_params set value $(entity_specific_params)
$data modify storage omegaflowey:attack.x-bullets-upper-save-states state_scores set value $(scores)

$execute positioned $(pos_x) $(pos_y) $(pos_z) rotated $(rotation_yaw) $(rotation_pitch) run function $(summon_function)
