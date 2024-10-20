execute if score #omegaflowey.telemetry.basetime omegaflowey.global.flag matches -1 run return 0

data modify storage omegaflowey:telemetry tags[-1] append value { name: "root", type: "end" }
function omegaflowey.main:telemetry/tag/shared

scoreboard players set #omegaflowey.telemetry.basetime omegaflowey.global.flag -1
