# Summon and initialize bullet
$execute positioned $(x) ~2.0 $(z) rotated $(yaw) 0 run \
  function animated_java:omegaflowey_finger_gun_bullet/summon { \
    args: { animation: 'omegaflowey_shoot', start_animation: true } \
  }
