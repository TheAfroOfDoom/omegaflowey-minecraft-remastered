## Randomize which attack to run based on `attack.weight`s

function entity:hostile/omega-flowey/attack/random/sum_weights

# Get randomized value to choose an attack to run
execute store result storage attack:random sum int 1 run scoreboard players get @s math.0
function entity:hostile/omega-flowey/attack/random/get_randomized_value with storage attack:random

function entity:hostile/omega-flowey/attack/random/choose_attack

# Reset weights used
function entity:hostile/omega-flowey/attack/random/reset_weights
