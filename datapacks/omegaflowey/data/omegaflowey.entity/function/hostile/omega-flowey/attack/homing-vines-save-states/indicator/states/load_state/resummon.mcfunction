$data modify storage omegaflowey:attack.homing-vines-save-states.indicator_rotation rotation_yaw set value $(rotation_yaw)
$data modify storage omegaflowey:attack.homing-vines-save-states.indicator_rotation rotation_pitch set value $(rotation_pitch)

execute summon minecraft:marker at @s run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/initialize/on_resummon
