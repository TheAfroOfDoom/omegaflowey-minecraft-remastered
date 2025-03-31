execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

function omegaflowey.main:telemetry/data/shared

$execute as $(active_player_uuid) run function omegaflowey.main:telemetry/data/active_player/gamemode/as_active_player
