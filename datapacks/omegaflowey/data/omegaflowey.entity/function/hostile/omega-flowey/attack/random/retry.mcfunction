scoreboard players add #omegaflowey.attack.random.retry_idx omegaflowey.attack.flag 1

function omegaflowey.entity:hostile/omega-flowey/attack/random/sum_weights

# Get randomized value to choose an attack to run
execute store result storage omegaflowey:attack.random sum int 1 run scoreboard players get @s omegaflowey.math.0
function omegaflowey.entity:hostile/omega-flowey/attack/random/get_randomized_value with storage omegaflowey:attack.random

function omegaflowey.entity:hostile/omega-flowey/attack/random/choose_attack

# Check if chosen attack is a repeat/if we care
function omegaflowey.entity:hostile/omega-flowey/attack/random/check_is_repeat
execute if score #omegaflowey.attack.random.is_repeat omegaflowey.attack.flag matches 1 run return run \
  function omegaflowey.entity:hostile/omega-flowey/attack/random/retry

function omegaflowey.entity:hostile/omega-flowey/attack/random/rotate_previous_attacks
function omegaflowey.entity:hostile/omega-flowey/attack/random/start_chosen_attack
