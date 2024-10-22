# relative gametime
execute store result score @s omegaflowey.math.0 run time query gametime
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag
execute store result storage omegaflowey:telemetry data.bossfight[-1][-1].tick int 1 run scoreboard players get @s omegaflowey.math.0

execute if data storage omegaflowey:telemetry.temp data run \
  data modify storage omegaflowey:telemetry data.bossfight[-1][-1].data set from storage omegaflowey:telemetry.temp data

# reset extra data
data remove storage omegaflowey:telemetry.temp data
