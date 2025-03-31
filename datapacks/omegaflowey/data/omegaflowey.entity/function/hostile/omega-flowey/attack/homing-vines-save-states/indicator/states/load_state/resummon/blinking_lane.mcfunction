# Store indicator uuid for blinking_lane to reference later
function gu:generate
data modify storage omegaflowey:attack.homing-vines-save-states indicator_uuid set from storage gu:main out

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1
$execute positioned $(pos_x) $(pos_y) $(pos_z) rotated $(rotation_yaw) $(rotation_pitch) run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/summon/raw
