## Initializes a random attack for entities (`boss_fight`) with `omegaflowey.boss-fight.attack.phase.i` == 0

# Set influences to defaults for attack_phase 0
scoreboard players set #omegaflowey.attack.friendliness-pellets omegaflowey.attack.weight 3
scoreboard players set #attack-homing-vines omegaflowey.attack.weight 3
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.weight 3
scoreboard players set #attack-x-bullets-upper omegaflowey.attack.weight 3

# Run base `start` function
function omegaflowey.entity:hostile/omega-flowey/attack/random/start
