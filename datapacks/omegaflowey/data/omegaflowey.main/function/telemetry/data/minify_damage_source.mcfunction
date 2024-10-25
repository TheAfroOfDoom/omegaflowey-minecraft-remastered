$function omegaflowey.main:telemetry/bossfight/schema/get/damage_source { source: "$(source)" }
$execute unless data storage omegaflowey:telemetry temp.damage_source run return run \
  function omegaflowey.main:telemetry/bossfight/schema/error/damage_source { source: "$(source)" }

data modify storage omegaflowey:telemetry temp.data.s set from storage omegaflowey:telemetry temp.damage_source
