# Remove tags
tag @s remove boss_fight.phase.soul

# Next phase
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize

# Move players to main arena
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  "execute at @s run function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/to_origin" \
}

# Re-summon main Omega Flowey models
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { \
  command: "function omegaflowey.entity:hostile/omega-flowey/summon/relative" \
}
function omegaflowey.entity:hostile/omega-flowey/animate
