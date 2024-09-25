# Update state flag
scoreboard players set #soul_5.touched soul.flag 1

# Apply yellow-highlighted variant
function animated_java:act_button/variants/selected/apply

# Summon and initialize call for help display
function entity:soul/shared/call_for_help_display/summon
execute as @e[tag=omega-flowey-remastered, tag=call-for-help-display-new] run \
  function entity:soul/soul_5/call_for_help_display/initialize

# TODO(36): transparent fade-out of `act_button` model?

$execute as $(executor_uuid) run function entity:soul/soul_5/executor/initialize/touch
