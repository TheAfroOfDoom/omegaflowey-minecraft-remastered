# split based on soul phase
execute if entity @s[tag=soul_0] run return run \
  function omegaflowey.entity:soul/soul_0/act_button/locator/player_interacted_with with storage omegaflowey:bossfight
execute if entity @s[tag=soul_5] run return run \
  function omegaflowey.entity:soul/soul_5/act_button/locator/player_interacted_with with storage omegaflowey:bossfight
