$execute unless entity $(executor_uuid) run return run \
  function omegaflowey.entity:soul/soul_4/act_button/terminate

execute if entity @s[tag=!stop_falling] run function omegaflowey.entity:soul/soul_4/act_button/loop/move
