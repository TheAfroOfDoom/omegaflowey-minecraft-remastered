execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

execute if score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag matches -1 run return 0

data modify storage omegaflowey:telemetry temp.bossfight_next set value { name: "root.end" }
function omegaflowey.main:telemetry/bossfight/tag/shared

scoreboard players set #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag -1
