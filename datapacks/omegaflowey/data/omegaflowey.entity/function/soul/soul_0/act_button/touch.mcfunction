# Update state flag
scoreboard players set #omegaflowey.soul.0.touched omegaflowey.soul.flag 1

# Apply yellow-highlighted variant
function animated_java:omegaflowey_act_button/variants/selected/apply

# Summon and initialize call for help display
function omegaflowey.entity:soul/shared/call_for_help_display/summon
execute as @e[tag=omega-flowey-remastered, tag=call-for-help-display-new] run \
  function omegaflowey.entity:soul/soul_0/call_for_help_display/initialize

# TODO(36): transparent fade-out of `act_button` model?

execute as @e[tag=soul_0,tag=soul-executor] run function omegaflowey.entity:soul/soul_0/executor/initialize/touch
