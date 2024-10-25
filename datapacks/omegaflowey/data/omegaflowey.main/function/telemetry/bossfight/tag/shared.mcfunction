function omegaflowey.main:telemetry/bossfight/schema/get/name with storage omegaflowey:telemetry temp.bossfight_next
execute unless data storage omegaflowey:telemetry temp.name run return run \
  function omegaflowey.main:telemetry/bossfight/tag/shared/error with storage omegaflowey:telemetry temp.bossfight_next

# relative gametime
execute store result score #omegaflowey.telemetry.math.entry_length omegaflowey.math.0 run time query gametime
scoreboard players operation #omegaflowey.telemetry.math.entry_length omegaflowey.math.0 -= \
  #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag
execute store result storage omegaflowey:telemetry temp.bossfight_next.tick int 1 run \
  scoreboard players get #omegaflowey.telemetry.math.entry_length omegaflowey.math.0

data modify storage omegaflowey:telemetry temp.bossfight_next.name set from storage omegaflowey:telemetry temp.name

data modify storage omegaflowey:telemetry temp.bossfight_next.data set value ""
execute if data storage omegaflowey:telemetry temp.data run \
  data modify storage omegaflowey:telemetry temp.bossfight_next.data set from storage omegaflowey:telemetry temp.data

function omegaflowey.main:telemetry/bossfight/tag/shared/to_string with storage omegaflowey:telemetry temp.bossfight_next
function omegaflowey.main:telemetry/bossfight/tag/update_page_length

# add data to latest bossfight on latest page
data modify storage omegaflowey:telemetry data.bossfight[-1][-1] append from storage omegaflowey:telemetry temp.bossfight_next_str

# reset extra data
data remove storage omegaflowey:telemetry temp.data
