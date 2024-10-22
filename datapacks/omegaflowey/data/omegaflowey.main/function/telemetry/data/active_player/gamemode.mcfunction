function omegaflowey.main:telemetry/data/shared

$execute as $(active_player_uuid) if entity @s[gamemode=survival] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value 0
$execute as $(active_player_uuid) if entity @s[gamemode=creative] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value 1
$execute as $(active_player_uuid) if entity @s[gamemode=adventure] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value 2
$execute as $(active_player_uuid) if entity @s[gamemode=spectator] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value 3
