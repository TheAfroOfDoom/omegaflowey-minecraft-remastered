scoreboard players operation @s omegaflowey.player.telemetry.id = #omegaflowey.telemetry.next_player_id omegaflowey.global.flag
scoreboard players add #omegaflowey.telemetry.next_player_id omegaflowey.global.flag 1

function gu:generate
execute store result storage omegaflowey:telemetry player_id_cache.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/enter/macro with storage omegaflowey:telemetry player_id_cache.temp