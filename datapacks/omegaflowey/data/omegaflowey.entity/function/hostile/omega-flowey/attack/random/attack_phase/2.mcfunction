## Initializes a random attack for entities (`boss_fight`) with `boss-fight.attack.phase.i` == 2

# Set influences to defaults for attack_phase 2
scoreboard players set #attack-homing-vines-save-states omegaflowey.attack.weight 3
scoreboard players set #attack-x-bullets-upper-save-states omegaflowey.attack.weight 3

# Run base `start` function
function omegaflowey.entity:hostile/omega-flowey/attack/random/start
