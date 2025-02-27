execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

$execute unless entity @s[type=player] run return run function omegaflowey.utils:error { error: '[ \
  { "text": "Booth tags must be added as a player entity (name: " }, \
  { "text": "$(name)", "color": "aqua" }, \
  { "text": ")" } \
]'}

# Ensure numeric player ID is set
execute unless score @s omegaflowey.player.telemetry.id matches 0.. run function omegaflowey.main:telemetry/booth/enter

data modify storage omegaflowey:telemetry temp.booth_next set value {}

$function omegaflowey.main:telemetry/booth/schema/get { n: "$(name)" }
$execute unless data storage omegaflowey:telemetry temp.n run return run function omegaflowey.utils:error { error: '[ \
  { "text": "Name not found in ", "color": "yellow" }, \
  { "text": "booth ", "color": "green" }, \
  { "text": "schema: ", "color": "yellow" }, \
  { "text": "$(name)", "color": "aqua" } \
]'}
data modify storage omegaflowey:telemetry temp.booth_next.n set from storage omegaflowey:telemetry temp.n

execute store result score @s omegaflowey.math.0 run time query gametime
# the first entry in the booth data array is the base gametick the array was initialized with
execute store result score @s omegaflowey.math.1 run data get storage omegaflowey:telemetry data.booth_basetick
scoreboard players operation @s omegaflowey.math.0 -= @s omegaflowey.math.1
execute store result storage omegaflowey:telemetry temp.booth_next.t int 1 run scoreboard players get @s omegaflowey.math.0
execute store result storage omegaflowey:telemetry temp.booth_next.u int 1 run scoreboard players get @s omegaflowey.player.telemetry.id

function omegaflowey.main:telemetry/booth/add_tag/to_string with storage omegaflowey:telemetry temp.booth_next
function omegaflowey.main:telemetry/booth/add_tag/check_page_length

# add data to latest page
data modify storage omegaflowey:telemetry data.booth[-1] append from storage omegaflowey:telemetry temp.booth_next_str
