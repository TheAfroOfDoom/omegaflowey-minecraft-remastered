# Save state of certain entities
execute if score @s attack.clock.i matches 7 run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/save_all_states

# Summon an indicator at a random player at every tick in the given range
# (these bullets are fake-outs -- trying to bait the player right before we load state)
execute if score @s attack.clock.i matches 26..34 at @r[tag=omegaflowey.player.fighting_flowey] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/summon

# Load states
execute if score @s attack.clock.i matches 35 run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/states/load_all_states
