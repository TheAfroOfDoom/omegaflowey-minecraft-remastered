# Minecraft fails to set `minecraft:marker` Rotation fields upon summon `execute rotated <yaw> <pitch> ...`,
# so we need to manually transfer that here using `rotate`
$execute at @s run rotate @s $(rotation_yaw) $(rotation_pitch)

execute store result score @s omegaflowey.attack.bullets.count run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_bullets_count
execute store result score @s omegaflowey.attack.bullets.total run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_bullets_total
execute store result score @s omegaflowey.attack.clock.i run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_clock_i
execute store result score @s omegaflowey.attack.position.x run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_position_x
execute store result score @s omegaflowey.attack.position.y run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_position_y
execute store result score @s omegaflowey.attack.position.z run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_position_z

# Resummon blinking_lane if it existed when we saved state
execute if data storage omegaflowey:attack.homing-vines-save-states entity_specific_params.has_blinking_lane run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/states/load_state/resummon/blinking_lane with storage omegaflowey:attack.homing-vines-save-states entity_specific_params.blinking_lane

# Manually summon blinking lane from indicator/initialize function if this indicator was save-stated on spawn-frame 0
execute if score @s omegaflowey.attack.clock.i matches -7 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/states/load_state/manual_summon_blinking_lane
