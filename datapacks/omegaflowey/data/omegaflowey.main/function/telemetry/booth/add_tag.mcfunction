execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

$function omegaflowey.main:telemetry/booth/schema/get { n: "$(name)" }
$execute unless data storage omegaflowey:telemetry temp.n run return run function omegaflowey.utils:error { error: '[ \
  { "text": "Name not found in booth schema: ", "color": "yellow" }, \
  { "text": "$(name)", "color": "aqua" } \
]'}

data modify storage omegaflowey:telemetry tags.booth append from storage omegaflowey:telemetry temp

execute store result score @s omegaflowey.math.0 run time query gametime
execute store result storage omegaflowey:telemetry tags.booth[-1].t int 1 run scoreboard players get @s omegaflowey.math.0

execute store result storage omegaflowey:telemetry player_id_cache.temp.i int 1 run scoreboard players get @s omegaflowey.player.telemetry.id
function omegaflowey.main:telemetry/booth/get_player_id with storage omegaflowey:telemetry player_id_cache.temp
