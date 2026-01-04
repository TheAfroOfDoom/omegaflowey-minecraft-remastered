tag @s remove call-for-help-display-new

data merge entity @s { brightness: { block: 15, sky: 0 } }

execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 0 run return run \
  function omegaflowey.entity:soul/soul_0/call_for_help_display/initialize
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 1 run return run \
  function omegaflowey.entity:soul/soul_1/call_for_help_display/initialize
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 2 run return run \
  function omegaflowey.entity:soul/soul_2/call_for_help_display/initialize
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 5 run return run \
  function omegaflowey.entity:soul/soul_5/call_for_help_display/initialize
