# Initialize object
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state set value {}
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.entity_specific_params set value {}
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.scores set value {}

## Data used to re-summon this entity ordered by priority

# Important functions/tags for later
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.summon_function set value "omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/states/load_state/resummon"

# Positional data
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.pos_x set from entity @s Pos[0]
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.pos_y set from entity @s Pos[1]
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.pos_z set from entity @s Pos[2]
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.rotation_yaw set from entity @s Rotation[0]
data modify storage omegaflowey:attack.x-bullets-upper-save-states current_state.rotation_pitch set from entity @s Rotation[1]

# Scores
execute store result storage omegaflowey:attack.x-bullets-upper-save-states current_state.scores.attack_clock_i int 1 run scoreboard players get @s omegaflowey.attack.clock.i

# Append this entity's saved_state to the executor's NBT list
$data modify entity $(executor_uuid) data.saved_states append from storage omegaflowey:attack.x-bullets-upper-save-states current_state
