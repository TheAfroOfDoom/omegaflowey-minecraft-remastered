# Save state of certain entities
execute if score @s attack.clock.i matches 18 run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/save_all_states

# Summon a homing-vine indicator at a random player at every tick in the given range
# (these bullets are fake-outs -- trying to bait the player right before we load state)
execute if score @s attack.clock.i matches 25..37 at @r[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/homing-vine

# Load states
execute if score @s attack.clock.i matches 38 run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states
