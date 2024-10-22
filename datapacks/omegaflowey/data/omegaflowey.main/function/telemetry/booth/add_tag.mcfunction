execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

$data modify storage omegaflowey:telemetry tags.booth append value { name: "$(name)" }

execute store result score @s omegaflowey.math.0 run time query gametime
execute store result storage omegaflowey:telemetry tags.booth[-1].tick int 1 run scoreboard players get @s omegaflowey.math.0

execute store result storage omegaflowey:telemetry player_id_cache.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/get_player_id with storage omegaflowey:telemetry player_id_cache.temp
