# Initialize object
data modify storage attack:homing-vines-save-states current_state set value {}
data modify storage attack:homing-vines-save-states current_state.entity_specific_params set value {}
data modify storage attack:homing-vines-save-states current_state.scores set value {}

## Data used to re-summon this entity ordered by priority

# Important functions/tags for later
data modify storage attack:homing-vines-save-states current_state.summon_function set value "omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/states/load_state/resummon"

# Positional data
data modify storage attack:homing-vines-save-states current_state.pos_x set from entity @s Pos[0]
data modify storage attack:homing-vines-save-states current_state.pos_y set from entity @s Pos[1]
data modify storage attack:homing-vines-save-states current_state.pos_z set from entity @s Pos[2]
data modify storage attack:homing-vines-save-states current_state.rotation_yaw set from entity @s Rotation[0]
data modify storage attack:homing-vines-save-states current_state.rotation_pitch set from entity @s Rotation[1]

# Scores
execute store result storage attack:homing-vines-save-states current_state.scores.attack_bullets_count int 1 run scoreboard players get @s omegaflowey.attack.bullets.count
execute store result storage attack:homing-vines-save-states current_state.scores.attack_bullets_total int 1 run scoreboard players get @s omegaflowey.attack.bullets.total
execute store result storage attack:homing-vines-save-states current_state.scores.attack_clock_i int 1 run scoreboard players get @s omegaflowey.attack.clock.i
execute store result storage attack:homing-vines-save-states current_state.scores.attack_position_x int 1 run scoreboard players get @s omegaflowey.attack.position.x
execute store result storage attack:homing-vines-save-states current_state.scores.attack_position_y int 1 run scoreboard players get @s omegaflowey.attack.position.y
execute store result storage attack:homing-vines-save-states current_state.scores.attack_position_z int 1 run scoreboard players get @s omegaflowey.attack.position.z

# Indicators have an associated blinking_lane (`data.blinking_lane_uuid`)
function gu:generate
data modify storage attack:homing-vines-save-states indicator_uuid set from storage gu:main out

function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/states/save_state/check_for_blinking_lane with entity @s data

# Append this entity's saved_state to the executor's NBT list
$data modify entity $(executor_uuid) data.saved_states append from storage attack:homing-vines-save-states current_state
