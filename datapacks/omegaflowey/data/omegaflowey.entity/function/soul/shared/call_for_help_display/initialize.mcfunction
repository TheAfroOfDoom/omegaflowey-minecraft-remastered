tag @s remove call-for-help-display-new

data merge entity @s { brightness: { block: 15, sky: 0 } }

execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 5 run \
  function omegaflowey.entity:soul/soul_5/call_for_help_display/initialize
