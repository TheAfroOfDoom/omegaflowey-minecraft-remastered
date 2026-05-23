# Start animation
function aj:omegaflowey_venus_fly_trap/animations/omegaflowey_chomp/play

# Play sound (and stop old ones)
function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
  'function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/loop/start_animating/as_players' \
}
