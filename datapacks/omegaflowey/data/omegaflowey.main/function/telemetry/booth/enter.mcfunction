execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

scoreboard players operation @s omegaflowey.player.telemetry.id = #omegaflowey.telemetry.next_player_id omegaflowey.global.flag
scoreboard players add #omegaflowey.telemetry.next_player_id omegaflowey.global.flag 1

function gu:generate
execute store result storage omegaflowey:telemetry data.player_id_map.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/enter/macro with storage omegaflowey:telemetry data.player_id_map.temp
