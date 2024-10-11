# Initialize object
data modify storage attack:homing-vines-save-states current_state set value {}
data modify storage attack:homing-vines-save-states current_state.entity_specific_params set value {}
data modify storage attack:homing-vines-save-states current_state.scores set value {}

## Data used to re-summon this entity ordered by priority

# Important functions/tags for later
data modify storage attack:homing-vines-save-states current_state.summon_function set value "entity:hostile/omega-flowey/attack/homing-vines-save-states/bullet/states/load_state/resummon"

# Positional data
data modify storage attack:homing-vines-save-states current_state.pos_x set from entity @s Pos[0]
data modify storage attack:homing-vines-save-states current_state.pos_y set from entity @s Pos[1]
data modify storage attack:homing-vines-save-states current_state.pos_z set from entity @s Pos[2]
data modify storage attack:homing-vines-save-states current_state.rotation_yaw set from entity @s Rotation[0]
data modify storage attack:homing-vines-save-states current_state.rotation_pitch set from entity @s Rotation[1]

# Scores
execute store result storage attack:homing-vines-save-states current_state.scores.attack_clock_i int 1 run scoreboard players get @s attack.clock.i

# Append this entity's saved_state to the executor's NBT list
$data modify entity $(executor_uuid) data.saved_states append from storage attack:homing-vines-save-states current_state
