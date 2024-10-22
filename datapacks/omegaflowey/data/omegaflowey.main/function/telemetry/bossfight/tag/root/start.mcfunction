execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

data modify storage omegaflowey:telemetry tags.bossfight append value [{ name: "root", type: "start" }]

execute store result score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag run time query gametime
execute store result storage omegaflowey:telemetry tags.bossfight[-1][0].tick int 1 run \
  scoreboard players get #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag

execute summon marker run function omegaflowey.main:telemetry/bossfight/tag/root/start/generate_uuid

data modify storage omegaflowey:telemetry tags.bossfight[-1][-1].player_id set from storage omegaflowey:bossfight active_player_uuid

function omegaflowey.main:telemetry/bossfight/tag/root/start/macro with storage omegaflowey:bossfight

function omegaflowey.main:telemetry/data/active_player/gamemode with storage omegaflowey:bossfight
data modify storage omegaflowey:telemetry tags.bossfight[-1][-1].player_gamemode set from storage omegaflowey:telemetry.temp data.player_gamemode
