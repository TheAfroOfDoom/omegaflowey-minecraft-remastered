# Face player
$rotate @s facing $(x) $(y) $(z)

# Store indicator uuid for blinking_lane to reference later
function gu:generate
data modify storage omegaflowey:attack.homing-vines indicator_uuid set from storage gu:main out

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
# Summon and initialize blinking-lane
$execute facing $(x) $(y) $(z) run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/summon/raw
