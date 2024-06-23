## Initializes a random attack for entities (`boss_fight`) with `boss-fight.attack.phase.i` == 1

# Set influences to defaults for attack_phase 1
scoreboard players set #attack-bomb attack.weight 3
scoreboard players set #attack-dentata-snakes attack.weight 3
scoreboard players set #attack-finger-guns attack.weight 3
scoreboard players set #attack-flies attack.weight 3
scoreboard players set #attack-homing-vines attack.weight 3

# Run base `start` function
function entity:hostile/omega-flowey/attack/random/start
