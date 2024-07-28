# Update state flag
scoreboard players set #soul_5.touched soul.flag 1

# Apply yellow-highlighted variant
function animated_java:act_button/variants/selected/apply

# TODO(136): Generalize code from Soul Event 0 to be applied here
say * You called for help...
# TODO(36): transparent fade-out of `act_button` model?

$execute as $(executor_uuid) run function entity:soul/soul_5/executor/initialize/touch
