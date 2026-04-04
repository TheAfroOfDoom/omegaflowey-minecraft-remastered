data remove storage omegaflowey:telemetry temp.damage_source
$data modify storage omegaflowey:telemetry temp.damage_source set from \
  storage omegaflowey:telemetry schema_bossfight_damage_source."$(source)"
