## Initializes a random attack for entities (`boss_fight`) with `omegaflowey.boss-fight.attack.phase.i` == 2

# Set influences to defaults for attack_phase 2
scoreboard players set #omegaflowey.attack.homing-vines-save-states omegaflowey.attack.weight 1
scoreboard players set #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.weight 1

# number of previous attacks to compare to (M)
scoreboard players set #omegaflowey.attack.random.previous_attacks_to_consider omegaflowey.attack.flag 1
# number of retries if chosen attack is same as M previous attacks
scoreboard players set #omegaflowey.attack.random.retry_max omegaflowey.attack.flag 1

# Run base `start` function
function omegaflowey.entity:hostile/omega-flowey/attack/random/start
