execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

execute if score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag matches -1 run return 0

$data modify storage omegaflowey:telemetry data.bossfight[-1] append value { name: "$(name)", type: "start" }
function omegaflowey.main:telemetry/bossfight/tag/shared
