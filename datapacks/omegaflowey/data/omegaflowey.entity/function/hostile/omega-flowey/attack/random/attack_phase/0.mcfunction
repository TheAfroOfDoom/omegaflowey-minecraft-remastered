## Initializes a random attack for entities (`boss_fight`) with `omegaflowey.boss-fight.attack.phase.i` == 0

# Set influences to defaults for attack_phase 0
scoreboard players set #omegaflowey.attack.flamethrower omegaflowey.attack.weight 1
scoreboard players set #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight 1
scoreboard players set #omegaflowey.attack.homing-vines omegaflowey.attack.weight 1
scoreboard players set #omegaflowey.attack.x-bullets-lower omegaflowey.attack.weight 1
scoreboard players set #omegaflowey.attack.x-bullets-upper omegaflowey.attack.weight 1

# number of previous attacks to compare to (M)
scoreboard players set #omegaflowey.attack.random.previous_attacks_to_consider omegaflowey.attack.flag 2
# number of retries if chosen attack is same as M previous attacks
scoreboard players set #omegaflowey.attack.random.retry_max omegaflowey.attack.flag 2

# Run base `start` function
function omegaflowey.entity:hostile/omega-flowey/attack/random/start
