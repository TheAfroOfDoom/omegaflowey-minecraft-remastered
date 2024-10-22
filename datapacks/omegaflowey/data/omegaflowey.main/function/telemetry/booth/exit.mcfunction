execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

execute store result storage omegaflowey:telemetry player_id_cache.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/exit/macro with storage omegaflowey:telemetry player_id_cache.temp

scoreboard players reset @s omegaflowey.player.telemetry.id
