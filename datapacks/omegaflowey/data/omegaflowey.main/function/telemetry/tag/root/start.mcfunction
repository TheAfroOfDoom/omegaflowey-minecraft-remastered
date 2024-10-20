execute unless data storage omegaflowey:telemetry tags run data modify storage omegaflowey:telemetry tags set value []

data modify storage omegaflowey:telemetry tags append value [{ name: "root", type: "start" }]

execute store result score #omegaflowey.telemetry.basetime omegaflowey.global.flag run time query gametime
execute store result storage omegaflowey:telemetry tags[-1][0].tick int 1 run \
  scoreboard players get #omegaflowey.telemetry.basetime omegaflowey.global.flag
