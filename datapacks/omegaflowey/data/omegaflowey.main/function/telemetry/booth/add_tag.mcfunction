execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

# Ensure numeric player ID is set
execute unless score @s omegaflowey.player.telemetry.id matches 0.. run function omegaflowey.main:telemetry/booth/enter

data modify storage omegaflowey:telemetry temp.booth_next set value {}

$function omegaflowey.main:telemetry/booth/schema/get { n: "$(name)" }
$execute unless data storage omegaflowey:telemetry temp.n run return run function omegaflowey.utils:error { error: '[ \
  { "text": "Name not found in booth schema: ", "color": "yellow" }, \
  { "text": "$(name)", "color": "aqua" } \
]'}
data modify storage omegaflowey:telemetry temp.booth_next.n set from storage omegaflowey:telemetry temp.n

execute store result score @s omegaflowey.math.0 run time query gametime
execute store result storage omegaflowey:telemetry temp.booth_next.t int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:telemetry temp.booth_next.u int 1 run scoreboard players get @s omegaflowey.player.telemetry.id

function omegaflowey.main:telemetry/booth/add_tag/macro with storage omegaflowey:telemetry temp.booth_next
