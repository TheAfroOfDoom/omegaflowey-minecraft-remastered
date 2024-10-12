# Initialize object
data modify storage attack:x-bullets-upper-save-states current_state set value {}
data modify storage attack:x-bullets-upper-save-states current_state.entity_specific_params set value {}
data modify storage attack:x-bullets-upper-save-states current_state.scores set value {}

## Data used to re-summon this entity ordered by priority

# Important functions/tags for later
data modify storage attack:x-bullets-upper-save-states current_state.summon_function set value "omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/states/load_state/resummon"

# Positional data
data modify storage attack:x-bullets-upper-save-states current_state.pos_x set from entity @s Pos[0]
data modify storage attack:x-bullets-upper-save-states current_state.pos_y set from entity @s Pos[1]
data modify storage attack:x-bullets-upper-save-states current_state.pos_z set from entity @s Pos[2]
data modify storage attack:x-bullets-upper-save-states current_state.rotation_yaw set from entity @s Rotation[0]
data modify storage attack:x-bullets-upper-save-states current_state.rotation_pitch set from entity @s Rotation[1]

# Scores
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_bullets_remaining int 1 run scoreboard players get @s omegaflowey.attack.bullets.remaining
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_clock_i int 1 run scoreboard players get @s omegaflowey.attack.clock.i
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_position_x int 1 run scoreboard players get @s attack.position.x
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_position_y int 1 run scoreboard players get @s attack.position.y
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_position_z int 1 run scoreboard players get @s attack.position.z
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_indicator_yaw int 1 run scoreboard players get @s attack.indicator.yaw
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_theta int 1 run scoreboard players get @s attack.theta
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_d_phi int 1 run scoreboard players get @s attack.d-phi
execute store result storage attack:x-bullets-upper-save-states current_state.scores.attack_phi int 1 run scoreboard players get @s attack.phi

# Append this entity's saved_state to the executor's NBT list
$data modify entity $(executor_uuid) data.saved_states append from storage attack:x-bullets-upper-save-states current_state
