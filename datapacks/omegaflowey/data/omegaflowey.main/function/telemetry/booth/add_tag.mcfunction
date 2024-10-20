$data modify storage omegaflowey:telemetry tags.booth append value { name: "$(name)" }

execute store result storage omegaflowey:telemetry player_id_cache.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/get_player_id with storage omegaflowey:telemetry player_id_cache.temp
