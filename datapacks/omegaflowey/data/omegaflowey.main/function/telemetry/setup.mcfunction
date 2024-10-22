execute unless data storage omegaflowey:telemetry data run data modify storage omegaflowey:telemetry data set value {}
# summit is hosted over a few subservers. keep track of which one is associated with which player ID map
execute unless data storage omegaflowey:telemetry data.server_id summon minecraft:marker run \
  function omegaflowey.main:telemetry/setup/set_server_id
execute unless data storage omegaflowey:telemetry data.player_id_map run \
  data modify storage omegaflowey:telemetry data.player_id_map set value {}
execute unless data storage omegaflowey:telemetry data.booth run \
  data modify storage omegaflowey:telemetry data.booth set value []
execute unless data storage omegaflowey:telemetry data.bossfight run \
  data modify storage omegaflowey:telemetry data.bossfight set value []
data modify storage omegaflowey:telemetry data.version set value "0.2.0"

execute unless score #omegaflowey.telemetry.next_player_id omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.next_player_id omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 1

function omegaflowey.main:telemetry/setup/initialize_booth_data
function omegaflowey.main:telemetry/booth/schema/setup
