tag @s remove call-for-help-display-new

execute if score #omegaflowey.soul.summon_type global.flag matches 5 run \
  function entity:soul/soul_5/call_for_help_display/initialize
