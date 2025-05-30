# Update state flag
scoreboard players set #omegaflowey.soul.0.touched omegaflowey.soul.flag 1

# Apply yellow-highlighted variant
function animated_java:omegaflowey_act_button/variants/selected/apply

# Play select sound
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:soul.touch ambient @s ~ ~ ~ 10' \
}

# Summon and initialize call for help display
scoreboard players set #omegaflowey.soul.summon_type omegaflowey.global.flag 0
function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/at/position { \
  command: "execute positioned ~ ~7.0 ~9.5 run function omegaflowey.entity:soul/shared/call_for_help_display/summon" \
}

# TODO(36): transparent fade-out of `act_button` model?

execute as @e[tag=soul_0,tag=soul-executor] run function omegaflowey.entity:soul/soul_0/executor/initialize/touch
