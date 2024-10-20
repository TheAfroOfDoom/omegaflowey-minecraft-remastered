execute if score #omegaflowey.telemetry.basetime omegaflowey.global.flag matches -1 run return 0

$data modify storage omegaflowey:telemetry tags[-1] append value { name: "$(name)", type: "instant" }
function omegaflowey.main:telemetry/tag/shared
