# relative gametime
execute store result score @s omegaflowey.math.0 run time query gametime
scoreboard players operation @s omegaflowey.math.0 -= #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag
execute store result storage omegaflowey:telemetry.temp bossfight_next.tick int 1 run scoreboard players get @s omegaflowey.math.0

function omegaflowey.main:telemetry/bossfight/schema/get with storage omegaflowey:telemetry.temp bossfight_next
execute unless data storage omegaflowey:telemetry temp.name run return run \
  function omegaflowey.main:telemetry/bossfight/tag/shared/error with storage omegaflowey:telemetry.temp bossfight_next

data modify storage omegaflowey:telemetry.temp bossfight_next.name set from storage omegaflowey:telemetry temp.name

data modify storage omegaflowey:telemetry.temp bossfight_next.data set value ""
execute if data storage omegaflowey:telemetry.temp data run \
  data modify storage omegaflowey:telemetry.temp bossfight_next.data set from storage omegaflowey:telemetry.temp data

function omegaflowey.main:telemetry/bossfight/tag/to_string with storage omegaflowey:telemetry.temp bossfight_next

# reset extra data
data remove storage omegaflowey:telemetry.temp data
