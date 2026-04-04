# Mark current indicator state as having an active blinking_lane
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.has_blinking_lane set value true

# Initialize object
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane set value {}

## Data used to re-summon this entity ordered by priority

# Positional data
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane.pos_x set from entity @s Pos[0]
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane.pos_y set from entity @s Pos[1]
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane.pos_z set from entity @s Pos[2]
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane.rotation_yaw set from entity @s Rotation[0]
data modify storage omegaflowey:attack.homing-vines-save-states current_state.entity_specific_params.blinking_lane.rotation_pitch set from entity @s Rotation[1]
