# Summon and initialize indicator
$execute positioned $(x) $(y) $(z) rotated $(yaw) $(pitch) run \
  function animated_java:finger_gun/summon { args: { animation: 'grow', start_animation: true, variant: 'cocked' } }
