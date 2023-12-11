## Initializes a random attack for entities (`boss_fight`) with `boss-fight.attack.phase.i` == 0

# Set influences to defaults for random_phase_0
scoreboard players set #attack-friendliness-pellets attack.weight 1
scoreboard players set #attack-x-bullets-lower attack.weight 1
scoreboard players set #attack-x-bullets-upper attack.weight 1

# Run base `start` function
function entity:hostile/omega-flowey/attack/random/start
