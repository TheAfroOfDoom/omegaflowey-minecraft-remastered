# Ensure numeric player ID is set and stored in player ID map
execute unless score @s omegaflowey.player.telemetry.id matches 0.. run function omegaflowey.main:telemetry/booth/enter
execute store result storage omegaflowey:telemetry temp.bossfight_root_next.player_id int 1 run \
  scoreboard players get @s omegaflowey.player.telemetry.id
