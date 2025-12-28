# Add tags
tag @s add homing-vines
tag @s add homing-vines-blinking-lane

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run return run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/states/load_state/blinking_lane \
    with storage omegaflowey:attack.homing-vines-save-states

function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize

data modify entity @s CustomName set value '"Homing-Vines Blinking Lane"'
execute on passengers if entity @s[tag=aj.omegaflowey_homing_vine_blinking_lane.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 }, teleport_duration: 0, view_range: 0 }

# Store blinking_lane uuid to parent indicator
function gu:generate
$execute as $(indicator_uuid) run data modify entity @s data.blinking_lane_uuid set from storage gu:main out
