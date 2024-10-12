## Initializes a random attack for entities (`boss_fight`) with `omegaflowey.boss-fight.attack.phase.i` == 1

# Set influences to defaults for attack_phase 1
scoreboard players set #omegaflowey.attack.bomb omegaflowey.attack.weight 3
scoreboard players set #omegaflowey.attack.dentata-snakes omegaflowey.attack.weight 3
scoreboard players set #omegaflowey.attack.finger-guns omegaflowey.attack.weight 3
scoreboard players set #omegaflowey.attack.flies omegaflowey.attack.weight 3
scoreboard players set #omegaflowey.attack.homing-vines omegaflowey.attack.weight 3

# Run base `start` function
function omegaflowey.entity:hostile/omega-flowey/attack/random/start
