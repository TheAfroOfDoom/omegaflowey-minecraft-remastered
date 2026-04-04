scoreboard players set #omegaflowey.attack.random.is_repeat omegaflowey.attack.flag 0

# is this under the max retry count?
execute \
  if score \
    #omegaflowey.attack.random.retry_idx omegaflowey.attack.flag >= \
    #omegaflowey.attack.random.retry_max omegaflowey.attack.flag \
  run return 0

# is the chosen attack the same as the last attack?
execute \
  if score #omegaflowey.attack.random.previous_attacks_to_consider omegaflowey.attack.flag matches 1.. \
  if score \
    #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = \
    #omegaflowey.attack.random.previous_attack_id omegaflowey.attack.flag \
  run return run \
  scoreboard players set #omegaflowey.attack.random.is_repeat omegaflowey.attack.flag 1

# is the chosen attack the same as the 2nd to last attack?
execute \
  if score #omegaflowey.attack.random.previous_attacks_to_consider omegaflowey.attack.flag matches 2.. \
  if score \
    #omegaflowey.attack.random.chosen_attack_id omegaflowey.attack.flag = \
    #omegaflowey.attack.random.2nd_previous_attack_id omegaflowey.attack.flag \
  run return run \
  scoreboard players set #omegaflowey.attack.random.is_repeat omegaflowey.attack.flag 1
