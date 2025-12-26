## Randomize which attack to run based on `omegaflowey.attack.weight` / retry logic

scoreboard players reset #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag

scoreboard players set #omegaflowey.attack.random.retry_idx omegaflowey.attack.flag -1

function omegaflowey.entity:hostile/omega-flowey/attack/random/retry

# Reset weights used
function omegaflowey.entity:hostile/omega-flowey/attack/random/reset_scores
