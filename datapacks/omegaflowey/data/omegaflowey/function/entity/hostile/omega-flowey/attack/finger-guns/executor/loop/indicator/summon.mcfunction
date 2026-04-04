# Summon and initialize indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run \
  function animated_java:omegaflowey_finger_gun/summon { args: { animation: 'omegaflowey_grow', start_animation: true, variant: 'cocked' } }
