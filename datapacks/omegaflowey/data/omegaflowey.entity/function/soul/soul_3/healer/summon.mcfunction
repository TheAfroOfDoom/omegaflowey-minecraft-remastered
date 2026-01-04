$data merge storage omegaflowey:soul.2.healer { \
  args: { animation: 'omegaflowey_move', frame: $(frame), start_animation: true } \
}
$execute at @s rotated $(yaw) $(pitch) run \
  function animated_java:omegaflowey_soul_2_note/summon with storage omegaflowey:soul.1.healer
