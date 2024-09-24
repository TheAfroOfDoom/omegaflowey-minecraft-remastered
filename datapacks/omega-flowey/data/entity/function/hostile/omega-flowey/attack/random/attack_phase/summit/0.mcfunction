## Initializes a random attack for entities (`boss_fight`) with `boss-fight.attack.phase.i` == 0

# Set influences to defaults for attack_phase 0
scoreboard players set #attack-bomb attack.weight 5
scoreboard players set #attack-dentata-snakes attack.weight 5
scoreboard players set #attack-finger-guns attack.weight 5
scoreboard players set #attack-friendliness-pellets attack.weight 5
scoreboard players set #attack-homing-vines attack.weight 5
scoreboard players set #attack-x-bullets-lower attack.weight 5
scoreboard players set #attack-x-bullets-upper attack.weight 5

# Run base `start` function
function entity:hostile/omega-flowey/attack/random/start
