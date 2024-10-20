execute unless data storage omegaflowey:telemetry.temp data run \
  data modify storage omegaflowey:telemetry.temp data set value {}

$execute as $(active_player_uuid) if entity @s[gamemode=adventure] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value "adventure"
$execute as $(active_player_uuid) if entity @s[gamemode=creative] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value "creative"
$execute as $(active_player_uuid) if entity @s[gamemode=spectator] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value "spectator"
$execute as $(active_player_uuid) if entity @s[gamemode=survival] run \
  data modify storage omegaflowey:telemetry.temp data.player_gamemode set value "survival"
