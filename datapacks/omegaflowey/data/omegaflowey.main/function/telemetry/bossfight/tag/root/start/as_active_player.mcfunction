function omegaflowey.main:telemetry/bossfight/tag/root/start/get_player_id

data modify storage omegaflowey:telemetry temp.bossfight_root_next.player_health set from entity @s Health

function omegaflowey.main:telemetry/data/active_player/gamemode/as_active_player
data modify storage omegaflowey:telemetry temp.bossfight_root_next.player_gamemode set from storage omegaflowey:telemetry temp.data.g
