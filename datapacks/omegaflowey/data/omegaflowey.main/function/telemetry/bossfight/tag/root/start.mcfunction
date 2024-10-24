execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

# this isn't checked in the schema, but `name:0` represents `root.start`
data modify storage omegaflowey:telemetry.temp bossfight_root_next set value { name: 0 }

execute store result score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag run time query gametime
execute store result storage omegaflowey:telemetry.temp bossfight_root_next.tick int 1 run \
  scoreboard players get #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag

execute summon marker run function omegaflowey.main:telemetry/bossfight/tag/root/start/generate_uuid

data modify storage omegaflowey:telemetry.temp bossfight_root_next.player_id set from storage omegaflowey:bossfight active_player_uuid

function omegaflowey.main:telemetry/bossfight/tag/root/start/macro with storage omegaflowey:bossfight
function omegaflowey.main:telemetry/data/active_player/gamemode with storage omegaflowey:bossfight
data modify storage omegaflowey:telemetry.temp bossfight_root_next.player_gamemode set from storage omegaflowey:telemetry.temp data.player_gamemode

data modify storage omegaflowey:telemetry data.bossfight append value []
function omegaflowey.main:telemetry/bossfight/tag/root/to_string with storage omegaflowey:telemetry.temp bossfight_root_next
