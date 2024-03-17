# Save state of certain entities
execute if score @s attack.clock.i matches 7 run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/save_all_states

# Load states
execute if score @s attack.clock.i matches 30 run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/load_all_states
