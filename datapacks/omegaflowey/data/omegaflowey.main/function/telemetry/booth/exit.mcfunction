execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

execute store result storage omegaflowey:telemetry data.player_id_map.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/exit/macro with storage omegaflowey:telemetry data.player_id_map.temp

scoreboard players reset @s omegaflowey.player.telemetry.id
