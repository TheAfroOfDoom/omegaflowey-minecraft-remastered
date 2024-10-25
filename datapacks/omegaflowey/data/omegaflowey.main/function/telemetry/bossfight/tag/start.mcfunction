execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

execute if score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag matches -1 run return 0

$data modify storage omegaflowey:telemetry temp.bossfight_next set value { name: "$(name).start" }
function omegaflowey.main:telemetry/bossfight/tag/shared
