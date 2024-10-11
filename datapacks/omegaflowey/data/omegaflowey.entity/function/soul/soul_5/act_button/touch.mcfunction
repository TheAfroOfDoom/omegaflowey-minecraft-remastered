# Update state flag
scoreboard players set #soul_5.touched soul.flag 1

# Apply yellow-highlighted variant
function animated_java:act_button/variants/selected/apply

# Summon and initialize call for help display
scoreboard players set #omegaflowey.soul.summon_type global.flag 5
function omegaflowey.entity:directorial/boss_fight/summit/soul_origin/at/position { command: "execute positioned ~ ~7.0 ~-9.5 run function omegaflowey.entity:soul/shared/call_for_help_display/summon" }

# TODO(36): transparent fade-out of `act_button` model?

$execute as $(executor_uuid) run function omegaflowey.entity:soul/soul_5/executor/initialize/touch
